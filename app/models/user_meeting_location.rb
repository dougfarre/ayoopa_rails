class UserMeetingLocation < ActiveRecord::Base
  attr_accessible :meeting_location_id, :user_id, :meeting_time_attributes

  belongs_to :user
  belongs_to :meeting_location

  has_many :meeting_times, :dependent => :destroy
  accepts_nested_attributes_for :meeting_times

  validates :user_id, :presence => true 
  validates :meeting_location_id, :presence => true 
end
