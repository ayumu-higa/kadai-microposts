class ToppagesController < ApplicationController
  def index
    if logged_in?
      @micropost = current_user.microposts.build  # form_for 用
      @microposts = current_user.microposts.page(params[:page])
    end
  end
end
