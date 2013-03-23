class UserMeetingLocation < ActiveRecord::Base
  attr_accessible :meeting_location_id, :user_id, :meeting_times_attributes

  belongs_to :user
  belongs_to :meeting_location

  has_many :meeting_times, :inverse_of => :user_meeting_location, :dependent => :destroy
  accepts_nested_attributes_for :meeting_times, :allow_destroy => true 
  validates_associated :meeting_times

  validates :user_id, :presence => true 
  validates :meeting_location_id, :presence => true
  validates_uniqueness_of :meeting_location_id, :scope => [:user_id]
end
