class RemoveUserIdFromImages < ActiveRecord::Migration
  def up
    remove_column :images, :user_id
    add_column    :users, :address_id, :integer
    add_column    :users, :image_id, :integer
  end

  def down
  end
end
