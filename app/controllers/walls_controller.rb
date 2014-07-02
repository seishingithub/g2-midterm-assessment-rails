class WallsController < ApplicationController

  def index
    @post = Post.new
    @posts = Post.order('created_at desc')
  end

end
