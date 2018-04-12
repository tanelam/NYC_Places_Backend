class User < ApplicationRecord
  has_secure_password
  
  has_many :user_places
  has_many :places, through: :user_places
end
