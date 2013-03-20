class AddUserIdToImage < ActiveRecord::Migration
  def change
    change_column :images, :item_id, :integer, :null => true
    add_column :images, :user_id, :integer
  end
end
