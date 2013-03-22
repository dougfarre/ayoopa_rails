class FixUserMeetingLocationAssociation < ActiveRecord::Migration
  def up
    remove_column :meeting_times, :user_id
    remove_column :meeting_times, :meeting_location_id

    add_column    :meeting_times, :user_meeting_location_id, :integer
  end

  def down
  end
end
