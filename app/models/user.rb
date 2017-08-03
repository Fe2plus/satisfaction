class User < ApplicationRecord
  attr_accessor :remember_token
  has_secure_password
  has_one :profile
  has_many :posts
  has_many :replies

#ランダムなトークンを返す。
  def User.new_token
    SecureRandom.urlsafe_base64
  end

#永続セッションのためにユーザーをデータベースに記憶する？
 def remember
   self.remember_token = User.new_token
   update_attribute(:remember_digest, User.digest(remember_token))
 end
end
