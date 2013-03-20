class CreateMeetingLocations < ActiveRecord::Migration
  def change
    create_table :meeting_locations do |t|
      t.string :title
      t.integer :address_id

      t.timestamps
    end
  end
end
