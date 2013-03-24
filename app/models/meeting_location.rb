class MeetingLocation < ActiveRecord::Base
  attr_accessible :address_id, :title, :address_attributes, :instructions

  belongs_to :address, :dependent => :destroy 
  accepts_nested_attributes_for :address 
  validates_associated :address, :presence => true

  has_many :user_meeting_locations
  has_many :users, :through => :user_meeting_locations

  validates :title,   :presence => true 

  def self.all_addresses(meeting_locations)
    addresses = Array.new
    
    meeting_locations.each do |meeting_location|
      addresses.push meeting_location.address      
    end

    return addresses
  end

  def self.all_with_marker
    identifier = "A"

    MeetingLocation.all.each do |meeting_location|
      meeting_location.address.gmaps_title = meeting_location.title 
      meeting_location.address.gmaps_marker = identifier
      meeting_location.address.gmaps_color = "%06x" % (rand * 0xffffff)
      meeting_location.address.gmaps_parent_id = meeting_location.id 
      identifier = identifier.next
    end
  end

  def self.reduce(meeting_locations)
    reduced_meeting_locations = Array.new  
     
    meeting_locations.each do |meeting_location| 
      reduced_meeting_location = Hash.new     
      reduced_meeting_location["meeting_location_id"] = meeting_location.id      
      reduced_meeting_location["title"] = meeting_location.title     
      reduced_meeting_location["address"] = meeting_location.address.full_street_address      
      reduced_meeting_location["instructions"] = meeting_location.instructions 
      reduced_meeting_locations << reduced_meeting_location
    end

    return reduced_meeting_locations
  end
end
