class LikesController < ApplicationController

  def create
      @post = Post.find(params[:post_id])
      @user = current_user
      @like = @post.likes.new
      @like.user = @user
      @like.save
      # render json: {new_likes_count: @post.likes.count}
  end

end
