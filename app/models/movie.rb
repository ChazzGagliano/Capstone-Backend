class Movie < ApplicationRecord
  has_many :favorites
  has_many :comments
  has_many :users, through: :favorites
  # has many :users, through: :comments
end
