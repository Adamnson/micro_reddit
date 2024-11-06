class User < ApplicationRecord
  has_many :posts
  validates :name, presence: { message: "cannot be blank" }
  validates :name, uniqueness: { message: "is already taken!" }, on: create
  validates :age, numericality: { greater_than: 18 }
  validates :age, presence: { message: "is required to verify your aliveness!" }, on: create
end
