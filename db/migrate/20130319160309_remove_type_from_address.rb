class RemoveTypeFromAddress < ActiveRecord::Migration
  def up
    remove_column :addresses, :type
  end

  def down
  end
end
