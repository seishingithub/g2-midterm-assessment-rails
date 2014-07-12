class CommentsController < ApplicationController
  def new
    @post = Post.find params[:post_id]
    @comment = Comment.new
  end

  def create
    @comment = Comment.create!(post_id: params[:post_id], user_id: current_user.id, body: params[:comment][:body])
    redirect_to root_path
  end

end
