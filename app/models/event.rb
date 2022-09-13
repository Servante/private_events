class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'id'
end
