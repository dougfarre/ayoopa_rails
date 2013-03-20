class UserMeetingLocation < ActiveRecord::Base
  attr_accessible :meeting_location_id, :user_id

  belongs_to :user
  belongs_to :meeting_location
end
