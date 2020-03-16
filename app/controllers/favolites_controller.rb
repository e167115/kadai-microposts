class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  def create
    mpost = Micropost.find(params[:like_id])
    current_user.like(mpost)
    flash[:success] = "投稿をお気に入りしました"
    #redirect_to current_user
    redirect_back(fallback_location: root_path)
  end

  def destroy
    mpost = Micropost.find(params[:like_id])
    current_user.like(mpost)
    flash[:success] = 'お気に入りを解除しました'
    #redirect_to user
    redirect_back(fallback_location: root_path)
  end
end
