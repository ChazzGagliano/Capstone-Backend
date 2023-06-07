class Movie < ApplicationRecord
  belongs_to :favorite
  has_many :users, through: :favorites
end
