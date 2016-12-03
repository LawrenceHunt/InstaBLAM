class LikesController < ApplicationController

  def create
      @post = Post.find(params[:id])
      @user = current_user
      @review.endorsements.create
      render json: {new_endorsement_count: @review.endorsements.count}
  end

end
