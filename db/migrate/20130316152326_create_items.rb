class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :user_id,     :null => false
      t.string 	:title,       :null => false
      t.string 	:description, :null => false
      t.string 	:caption,     :null => false
      t.decimal :value,       :null => false, :precision => 8, :scale => 2
      t.decimal :cost_day,    :null => false, :precision => 8, :scale => 2
      t.decimal :cost_week,   :null => false, :precision => 8, :scale => 2
      t.decimal :cost_month,  :null => false, :precision => 8, :scale => 2
      t.string 	:condition,   :null => false
      t.boolean :active,      :default => true
      t.timestamps
    end
  end
end
