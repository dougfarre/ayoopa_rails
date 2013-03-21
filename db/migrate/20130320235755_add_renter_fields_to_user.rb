class AddRenterFieldsToUser < ActiveRecord::Migration
  def change
    add_column :users, :phone_one, :string
    add_column :users, :phone_two, :string
  end
end
