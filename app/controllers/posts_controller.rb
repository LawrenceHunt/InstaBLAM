class PostsController < ApplicationController

before_action :authenticate_user!, :except => [:index, :show]

  def new
    if !current_user
      flash[:error] = 'You need to sign in or sign up before posting.'
    else
    @post = Post.new
    end
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      flash[:success] = "Success! Your image was uploaded successfully."
      redirect_to post_path(@post)
    else
      flash[:error] = @post.errors.full_messages
      redirect_to new_post_path
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    @post.update(post_params)

    redirect_to '/posts'
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:notice] = "Post deleted successfully"
    redirect_to '/posts'
  end

  private
  def post_params
    params.require(:post).permit(:description, :image)
  end
end
