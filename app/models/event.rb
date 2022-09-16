class Event < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  validates :location, presence: true
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
end
