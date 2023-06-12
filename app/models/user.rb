class User < ApplicationRecord
  has_many :favorites
  has_many :comments
  has_many :movies, through: :favorites
  has_many :movies, through: :comments

  has_secure_password
validates :email, presence: true, uniqueness: true
end
