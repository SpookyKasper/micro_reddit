class User < ApplicationRecord
  has_many :posts
  has_many :comments

  validates :email, presence: true, uniqueness: true, length: { minimum: 3 }
  validates :password, presence: true, length: { minimum: 6 }
end
