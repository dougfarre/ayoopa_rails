class CreateUserMeetingLocations < ActiveRecord::Migration
  def change
    create_table :user_meeting_locations do |t|
      t.integer :user_id
      t.integer :meeting_location_id

      t.timestamps
    end
  end
end
