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

  # def actors
  #   url = URI("https://imdb8.p.rapidapi.com/auto-complete?q=game%20of%20thr")

  #   http = Net::HTTP.new(url.host, url.port)
  #   http.use_ssl = true

  #   request = Net::HTTP::Get.new(url)
  #   request["X-RapidAPI-Key"] = Rails.application.          credentials.fetch(:movies_api)[:api_key]
  #   request["X-RapidAPI-Host"] = 'imdb8.p.rapidapi.com'

  #   response = http.request(request)
  #   render json: response.read_body
  #   actors = data["d"].map { |entry| entry["s"] }.flatten
  #    end
  

  end
 