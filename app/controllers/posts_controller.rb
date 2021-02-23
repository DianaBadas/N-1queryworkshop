class PostsController < ApplicationController
  def index
    # @posts = Post.all
    # @posts = Post.all.includes([:user])
    @posts = Post.all.includes(user: :address)
  end
end
