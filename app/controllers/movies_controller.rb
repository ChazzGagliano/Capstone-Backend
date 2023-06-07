class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render :index
  end

  def create
    @movie = Movie.new(
    name: params[:name],
    image_url: params[:image_url],
    description: params[:description],
    category: params[:category]
    )
    @movie.save
    render :show
  end

end
 