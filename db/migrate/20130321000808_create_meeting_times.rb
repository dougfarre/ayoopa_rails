class CreateMeetingTimes < ActiveRecord::Migration
  def change
    create_table :meeting_times do |t|
      t.integer :meeting_location_id, :null => false
      t.integer :user_id,     :null => false
      t.string  :day_of_week, :null => false
      t.time    :start_time,  :null => false
      t.time    :end_time,    :null => false

      t.timestamps
    end
  end
end
