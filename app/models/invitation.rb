class Invitation < ApplicationRecord
  belongs_to :attendee, class_name: 'User'
  belongs_to :attended_event, class_name: 'Event', foreign_key: :attended_event_id 
  # belongs_to :event, foreign_key: 'event_id'
end
 