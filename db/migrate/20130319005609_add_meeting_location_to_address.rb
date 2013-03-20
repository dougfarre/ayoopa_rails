class AddMeetingLocationToAddress < ActiveRecord::Migration
  def change
    add_column :addresses, :meeting_location_id, :integer
  end
end
