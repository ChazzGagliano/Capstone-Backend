Rails.application.routes.draw do
  post "/favorites" => "favorites#create"
  get "/favorites" => "favorites#index"
  get "/users" => "users#index"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/movies" => "movies#index"
  post "/movies" => "movies#create"
  delete "/favorites/:id" => "favorites#destroy"
  post "/comments" => "comments#create"
  delete "/comments/:id" => "comments#destroy"
  get "/actors" => "movies#actors"
end
