class CreateCalendars < ActiveRecord::Migration
  def change
    create_table :calendars do |t|
      t.integer   :item_id,     :null => false
      t.datetime  :start_date,  :null => false
      t.datetime  :end_date,    :null => false 
      t.string    :type,        :null => false
      t.timestamps
    end
  end
end
