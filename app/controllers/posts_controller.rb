class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def new
    @post
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy

  end

  private

end
