class GuestsController < ApplicationController
  def index
    @guest = Guest.new
    @gifts = Gift.all
  end

  def create
    @guest = Guest.new(guest_params)
    if @guest.save
      session[:user_id] = @guest.id
      flash[:notice] = "Ha ingresado como #{@guest.name}!"
      redirect_to root_path
    end
  end

  def take
    @gift = Gift.find(params[:id])
    @gift.update(taken: true)
    flash[:notice] = "Has decidido regalar #{@gift.name}!"
    redirect_to root_path
  end

  def destroy
    reset_session
    flash[:notice] = "Ha salido de su sesión!"
    redirect_to root_path
  end

  private

  def guest_params
    params.require(:guest).permit(:name)
  end
end
