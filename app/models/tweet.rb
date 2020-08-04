class Tweet < ApplicationRecord
  has_many :replies, dependent: :destroy
  validates :body, presence: true, length: { maximum: 140 }
end
