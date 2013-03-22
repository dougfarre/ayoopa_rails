class CreateMeetingWeekDays < ActiveRecord::Migration
  def change
    create_table :meeting_week_days do |t|
      t.integer :meeting_time_id
      t.integer :day

      t.timestamps
    end
  end
end
