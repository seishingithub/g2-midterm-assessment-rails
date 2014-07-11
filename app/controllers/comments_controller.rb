class Comments < ApplicationController


  def new
    @post = Post.find params[:post.id]
    @comment = Comment.new
  end

end