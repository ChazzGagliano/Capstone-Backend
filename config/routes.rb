Rails.application.routes.draw do
  get "/users" => "users#index"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/movies" => "movies#index"
  post "/movie" => "movies#create"
end
