class UserAddress < ActiveRecord::Base
  attr_accessible :address_id, :user_id, :title, :primary, :address_attributes
  
  belongs_to :address
  belongs_to :user

  validates_length_of :title, :in => 3..18, :allow_blank => false

  validates_associated :address, :presence => true
  validates_associated :user, :presence => true

  accepts_nested_attributes_for :address 

  def self.all_addresses(user_addresses)
    addresses = Array.new
    
    user_addresses.each do |user_address|
      addresses.push user_address.address      
    end

    return addresses
  end

  def self.add_marker(user_addresses)
    identifier = "A"
    
    user_addresses.each do |user_address|
      user_address.address.gmaps_marker = identifier
      user_address.address.gmaps_color = "%06x" % (rand * 0xffffff)
      identifier = identifier.next
    end
  end
end
