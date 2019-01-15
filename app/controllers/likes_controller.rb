class LikesController < ApplicationController
  before_action :require_user_logged_in
  def create
    micropost = Micropost.find(params[:micropost_id])
    current_user.followlike(micropost)
    flash[:success] = 'ライクしました'
    redirect_to root_url
  end

  def destroy
    micropost = Micropost.find(params[:micropost_id])
    current_user.unfollowlike(micropost)
    flash[:success] = 'ライクを解除しました'
    redirect_back(fallback_location: root_path)
  end
end
