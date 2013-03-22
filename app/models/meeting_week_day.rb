class MeetingWeekDay < ActiveRecord::Base
  attr_accessible :day, :meeting_time_id

  belongs_to :meeting_time
end
