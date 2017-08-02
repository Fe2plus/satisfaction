class User < ApplicationRecord
  has_secure_password
  has_one :profile
  has_many :posts
  has_many :replies

  def User.new_token
    SecureRandom.urlsafe_base64
  end
end
