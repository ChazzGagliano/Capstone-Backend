Rails.application.routes.draw do
  post "/favorites" => "favorites#create"
  get "/favorites" => "favorites#index"
  get "/users/:id" => "users#show"
  get "/users" => "users#index"
  post "/users" => "users#create"
  post "/sessions" => "sessions#create"
  get "/movies" => "movies#index"
  post "/movies" => "movies#create"
  delete "/favorite/:id" => "favorites#destroy"

end
