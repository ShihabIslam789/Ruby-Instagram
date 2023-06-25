class LikesController < ApplicationController
  def create
    @like = current_user.likes.new(like_params)
    if !@like.save
      flash[!alert] = "you already liked this post"
    end
    redirect_to_root_path
  end

  def destroy
    @like = current_user.likes.find(params[:id])
    @like.destroy
    redirect_to_root_path
  end

  def like_params

    params.require(:like).permit(:post_id)  
  end
end
