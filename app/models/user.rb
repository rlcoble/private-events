class User < ApplicationRecord
	has_many :events, :foreign_key => :creator_id
	has_many :event_attendance, :foreign_key => :attendee_id
	has_many :attended_events, :through => :event_attendance

	def upcoming_events
		self.attended_events.where("date > ?", Date.yesterday)
	end

	def previous_events
		self.attended_events.where("date < ?", Date.today)
	end
end
