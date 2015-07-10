class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "This post has been saved."
    else
      flash[:notice] = "Please try again."
    end
  end

  def edit
  end

  def update
  end

  def destroy

  end

  private
  def post_params
    params.require(:post).permit(:post_title, :post_content)
  end
end
