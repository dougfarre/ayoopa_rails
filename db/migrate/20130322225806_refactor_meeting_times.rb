class RefactorMeetingTimes < ActiveRecord::Migration
  def up
    drop_table :meeting_week_days

    add_column :meeting_times, :mon, :bool
    add_column :meeting_times, :tue, :bool
    add_column :meeting_times, :wed, :bool
    add_column :meeting_times, :thu, :bool
    add_column :meeting_times, :fri, :bool
    add_column :meeting_times, :sat, :bool
    add_column :meeting_times, :sun, :bool
  end

  def down
  end
end
