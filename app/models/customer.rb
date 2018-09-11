class Customer < ApplicationRecord
  has_secure_password
  has_many :projects
  has_many :developers, through: :projects

  validates :email, uniqueness: true
  validates :password, :email, presence: true
end
