class Account::PostsController < ApplicationController
  before_action :authenticate_user!
  def index
    @posts = current_user.posts
  end

  def edit
    @post = post.find(params[:id])
    @post.save
   redirect_to post_params, notice: "Edit Success"

 end

 def destroy
   @post = post.find(params[:id])
   @post.destroy
 end
end
