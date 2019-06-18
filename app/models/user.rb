class User < ApplicationRecord
  has_secure_password
  validates :name, :username, presence: true
  validates :username, uniqueness: true

end
