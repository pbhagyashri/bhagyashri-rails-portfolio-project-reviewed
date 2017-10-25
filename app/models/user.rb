class User < ApplicationRecord

  has_many :restaurants
  has_many :reviews, through: :restaurants

  has_secure_password

  validates :email, :presence => true
  validates :email, :uniqueness => true
  validates :name, :presence => true
  validates :name, :uniqueness => true

end
