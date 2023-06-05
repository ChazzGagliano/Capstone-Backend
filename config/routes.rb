Rails.application.routes.draw do
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/movies" => "movies#index"
  post "/movie" => "movies#create"
end
