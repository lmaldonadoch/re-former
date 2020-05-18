class User < ApplicationRecord
  EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :username, length: { minimum: 5 }, presence: true
  validates :email, presence: true, format: { with: EMAIL_FORMAT }
  validates :password, presence: true
end
