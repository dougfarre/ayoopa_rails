class CreateItemImages < ActiveRecord::Migration
  def change
    create_table :item_images do |t|
      t.integer :item_id
      t.integer :image_id

      t.timestamps
    end
  end
end
