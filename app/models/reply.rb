class Reply < ApplicationRecord
  belongs_to :tweet
  validates :replier, :body, presence: true
end
