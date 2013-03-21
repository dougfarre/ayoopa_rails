class AddInstructionsToMeetingLocations < ActiveRecord::Migration
  def change
    add_column :meeting_locations, :instructions, :string
  end
end
