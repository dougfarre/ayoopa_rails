class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable, #:confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  attr_accessible :image_id

  validates :name, :presence => true
 
  has_many :items
  has_many :user_addresses
  has_many :addresses, :through => :user_addresses
  has_many :user_meeting_locations
  has_many :meeting_locations, :through => :user_meeting_locations

  has_one :preference

  belongs_to :image 

  after_create :create_preference

  def create_preference
    self.build_preference 
    self.save
  end
end
