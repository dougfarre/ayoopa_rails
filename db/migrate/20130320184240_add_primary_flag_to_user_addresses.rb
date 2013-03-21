class AddPrimaryFlagToUserAddresses < ActiveRecord::Migration
  def change
    add_column :user_addresses, :primary, :bool
  end
end
