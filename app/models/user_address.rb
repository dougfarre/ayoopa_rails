class UserAddress < ActiveRecord::Base
  attr_accessible :address_id, :user_id, :title
  
  belongs_to :address
  belongs_to :user
end
