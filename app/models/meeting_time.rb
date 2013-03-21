class MeetingTime < ActiveRecord::Base
  attr_accessible :meeting_location_id, :user_id, :day_of_week, :start_time, :end_time

  belongs_to :user 
  belongs_to :meeting_location

  validates :meeting_location_id, :presence => true
  validates :user_id, :presence => true
  validates :day_of_week, :presence => true
  validates :start_time, :presence => true
  validates :end_time, :presence => true
end
