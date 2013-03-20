class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer :user_id
      t.string  :title
      t.string  :line_one
      t.string  :line_two
      t.string  :city
      t.string  :state
      t.string  :zip
      t.string  :type

      t.timestamps
    end
  end
end
