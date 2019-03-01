class GuestsController < ApplicationController
  def index
    if session[:user_id].present?
      reset_session
    end
    @guest = Guest.new
    if ActiveModel::Type::Boolean.new.cast(params[:available]) == true
      @gifts = Gift.where(taken: false)
    elsif params[:my_id].nil?
      @gifts = Gift.all
    elsif session[:user_id].present?
      @gifts = Guest.find(session[:user_id]).gifts
    end
    @current = unless session[:user_id].nil?
                 Guest.find(session[:user_id])
               else
                 nil
               end
  end

  def create
    params[:guest][:name] = params[:guest][:name].downcase
    @guest = Guest.new(guest_params)
    if @guest.save
      session[:user_id] = @guest.id
      flash[:notice] = "Ha ingresado como #{@guest.name.capitalize}!"
      redirect_to root_path
    else
      flash[:notice] = 'Error: ' +  @guest.errors.full_messages.first
      redirect_to root_path
    end
  end

  def take
    @gift = Gift.find(params[:id])
    @gift.update(taken: true, guest_id: session[:user_id])
    flash[:notice] = "Has decidido regalar #{@gift.name}!"
    redirect_to root_path
  end

  def regret
    @gift = Gift.find(params[:id])
    @gift.update(guest_id: nil, taken: false)
    flash[:notice] = "Te arrepentiste de regalar #{@gift.name}!"
    redirect_to root_path
  end

  def destroy
    reset_session
    flash[:notice] = "Ha salido de su sesión!"
    redirect_to root_path
  end

  def new_session
    params[:name] = params[:name].downcase
    unless Guest.where(name: params[:name]).empty?
      session[:user_id] = Guest.where(name: params[:name]).first.id
      @guest = Guest.find(session[:user_id])
      flash[:notice] = "Bienvenid@ #{@guest.name}!"
      redirect_to root_path
    else
      flash[:notice] = 'No encontramos tu nombre! Inténtalo otra vez (tal vez pusiste mayúsculas?)'
      redirect_to root_path
    end
  end

  private

  def guest_params
    params.require(:guest).permit(:name, :available)
  end
end
