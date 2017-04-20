class FavosController < ApplicationController
  before_action :require_user_logged_in

  def create
    micropost = Micropost.find(params[:starr_id])
    current_user.star(micropost)
    flash[:success] = 'お気に入りに登録しました。'
    redirect_to current_user
  end

  def destroy
    micropost = Micropost.find(params[:starr_id])
    current_user.unstar(micropost)
    flash[:success] = 'お気に入りから解除しました。'
    redirect_to current_user
  end
end