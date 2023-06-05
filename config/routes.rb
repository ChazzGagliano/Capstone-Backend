Rails.application.routes.draw do
  post "/favorites" => "favorites#create"
  get "/favorites" => "favorites#index"
  get "/users" => "users#index"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/movies" => "movies#index"
  post "/movie" => "movies#create"

end
