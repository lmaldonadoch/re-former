class User < ApplicationRecord
  validates :username, length: { is: 5 }, presence: true
  validates :email, presence: true, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  validates :password, presence: true
end
