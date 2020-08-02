class Tweet < ApplicationRecord
  has_many :replies
  validates :body, presence: true, length: { maximum: 140 }
end
