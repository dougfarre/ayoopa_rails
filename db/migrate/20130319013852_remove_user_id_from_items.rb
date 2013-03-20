class RemoveUserIdFromItems < ActiveRecord::Migration
  def up
    #remove_column :images, :user_id
    remove_column :users, :address_id
  end

  def down
  end
end
