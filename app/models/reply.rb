class Reply < ApplicationRecord
  belongs_to :post, optional: true
  belongs_to :user, optional: true
  validates(:body,presence: true)
end
