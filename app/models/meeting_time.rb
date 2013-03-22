class MeetingTime < ActiveRecord::Base
  attr_accessible :user_meeting_location_id, :start_time, :end_time

  has_many :meeting_week_days, :dependent => :destroy

  belongs_to :user_meeting_location

  validates :user_meeting_location_id, :presence => true
  validates :start_time, :presence => true
  validates :end_time, :presence => true
end
