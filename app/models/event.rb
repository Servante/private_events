class Event < ApplicationRecord
  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }
  validates :location, presence: true
  
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  # has_many :events, foreign_key: 'event_id'
  has_many :invitations, foreign_key: :attended_event_id, dependent: :destroy
  has_many :attendees, through: :invitations


  def self.past
    a_events = Event.all
    p_events = a_events.to_a.keep_if {|event| event.date < Time.now}    
  end

  def self.future
    a_events = Event.all
    p_events = a_events.to_a.keep_if {|event| event.date > Time.now}
  end
end
