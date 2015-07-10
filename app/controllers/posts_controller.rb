class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    if current_user && current_user.admin?
      @post = Post.new
    else
      redirect_to new_user_session_path
    end
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:notice] = "Post saved."
      redirect_to posts_path
    else
      flash[:notice] = "Please try again."
      render :new
    end
  end

  def edit
    if current_user && current_user.admin?
      @post = Post.find(params[:id])
    else
      redirect_to new_user_session_path
    end
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:notice] = "Post updated."
      redirect_to posts_path
    else
      flash[:notice] = "Please try again."
      render :edit
    end
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to posts_path
  end

  private
  def post_params
    params.require(:post).permit(:post_title, :post_content, :attached_image)
  end
end
