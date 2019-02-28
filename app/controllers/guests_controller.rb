class GuestsController < ApplicationController
  def index
    @gifts = Gift.all
  end

  def take
    @gift = Gift.find(params[:id])
    @gift.update(taken: true)
    flash[:notice] = "Has decidido regalar #{@gift.name}!"
    redirect_to root_path
  end
end
