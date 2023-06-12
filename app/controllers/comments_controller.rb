class CommentsController < ApplicationController
  def create
    @comment = Comment.new(
    user_id: current_user.id,
    user_name: current_user.name,
    movie_id: params[:movie_id],
    text: params[:text]
    )
    @comment.save
    render :show
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @comment.destroy
    render json:{message: "comment deleted"}
  end
end
 