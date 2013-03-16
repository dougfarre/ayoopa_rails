class Calendar < ActiveRecord::Base
  attr_accessible :end_date, :item_id, :start_date, :type

  belongs_to :item

  validates :item_id,     :presence => true 
  validates :start_date,  :presence => true 
  validates :end_date,    :presence => true 
  validates :type,        :presence => true 
end
