class Address < ActiveRecord::Base
  attr_accessible :city, :line_one, :line_two, :state, :zip, :latitude, :longitude

  attr_accessor :gmaps_marker, :gmaps_color
   
  has_many :user_addresses
  has_many :users, :through => :user_addresses

  has_one :meeting_location 

  validates :city,      :presence => true 
  validates :line_one,  :presence => true 
  validates :state,     :presence => true 
  validates :zip,       :presence => true 

  geocoded_by :full_street_address   # can also be an IP address
  after_validation :geocode          # auto-fetch coordinates
  
  acts_as_gmappable :process_geocoding => false

  def full_street_address
    return self.line_one + ", " + self.city + ", " + self.state + ", " + self.zip
  end

  def prepopulate_address(request)
    self.city = request.location.city 
    self.state = request.location.state
    self.zip = request.location.postal_code
  end
end
