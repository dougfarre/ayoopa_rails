class RemoveDayFromMeetingTimes < ActiveRecord::Migration
  def up
    remove_column :meeting_times, :day_of_week
  end

  def down
  end
end
