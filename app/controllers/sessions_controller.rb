class SessionsController < ApplicationController
  post "/sessions" => "sessions#create"
end
