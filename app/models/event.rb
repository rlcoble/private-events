class Event < ApplicationRecord
	belongs_to :creator, :class_name => "User"
	has_many :event_attendance, :foreign_key => :event_id
	has_many :attendees, :through => :event_attendance
	scope :upcoming, -> { where("date > ?", Date.yesterday) }
	scope :past, -> { where("date < ?", Date.today) }
end
