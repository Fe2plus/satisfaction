class Post < ApplicationRecord
  belongs_to :user, optional: true
  has_many :replies
  validates(:title,presence: true)
  validates(:body,presence: true)
end
