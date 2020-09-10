class User < ApplicationRecord
  has_secure_password
  validates :email, uniqueness: true, presence: true
  validates :name, presence: true
  validates :password_digest, presence: true
  
  has_many :tasks
end