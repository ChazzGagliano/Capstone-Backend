class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    @actors = []
    @movies.each do |movie|
      url = URI("https://imdb8.p.rapidapi.com/auto-complete?q=#{movie.name}")

      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true

      request = Net::HTTP::Get.new(url)
      request["X-RapidAPI-Key"]  = Rails.application.credentials.fetch(:movies_api)[:api_key]
      p Rails.application.credentials.fetch(:movies_api)[:api_key]
      request["X-RapidAPI-Host"] = 'imdb8.p.  rapidapi.com'

      response = http.request(request)
      data = JSON.parse(response.read_body)
      p data
      p response
      actors = data["d"].map { |entry| entry["s"] } 
      @actors.push(actors[0])
    end
    p @actors
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
 