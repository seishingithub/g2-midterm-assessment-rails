class Comments < ApplicationController


  def new
    @post = Post.find params[:post_id]
    @comment = Comment.new
  end

end