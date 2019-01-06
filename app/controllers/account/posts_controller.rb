class Account::PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = current_user.posts
  end

  def destroy
    @posts.destroy
    redirect_to groups_path, alert: "Group deleted"
  end

  private
  def group_params
    params.require(:group).permit(:title, :description)
  end
end
