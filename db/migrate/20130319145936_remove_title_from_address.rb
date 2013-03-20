class RemoveTitleFromAddress < ActiveRecord::Migration
  def up
    add_column :user_addresses, :title, :string
    remove_column :addresses, :title
  end

  def down
  end
end
