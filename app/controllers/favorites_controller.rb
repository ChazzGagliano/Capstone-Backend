class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
    render :index
  end

  def create
    @favorite = Favorite.new(
    user_id: params[:user_id],
    movie_id: params[:movie_id]
    )
    @favorite.save
    render :show
  end

  def destroy
    @favorite = Favorite.find_by(id: params[:id])
    @favorite.destroy
    render json:{message: "favorite removed"}
  end
end
