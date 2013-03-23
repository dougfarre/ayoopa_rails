class ChangeTimeColumnsToDateTime < ActiveRecord::Migration
  def up
    remove_column :meeting_times, :start_time
    remove_column :meeting_times, :end_time

    add_column :meeting_times, :start_time, :datetime
    add_column :meeting_times, :end_time, :datetime

  end

  def down
  end
end
