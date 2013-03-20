class ChangeAddressStructure < ActiveRecord::Migration
  def up
    create_table :user_address do |t|
      t.integer :user_id
      t.integer :address_id
    end

    create_table :item_image do |t|
      t.integer :item_id
      t.integer :image_id
    end

    remove_column :addresses, :user_id
    remove_column :addresses, :meeting_location_id
  end

  def down
  end
end
