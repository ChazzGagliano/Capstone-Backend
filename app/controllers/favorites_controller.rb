class FavoritesController < ApplicationController
  def index
    @favorites = current_user.favorites
    render :index
    
  end

  def create
    @favorite = Favorite.new(
    user_id: current_user.id,
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
