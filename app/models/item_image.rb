class ItemImage < ActiveRecord::Base
  attr_accessible :image_id, :item_id
  
  belongs_to :item
  belongs_to :image
end
