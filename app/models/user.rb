class User < ActiveRecord::Base
  rolify
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable, #:confirmable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

  # Setup accessible (or protected) attributes for your model
  attr_accessible :role_ids, :as => :admin
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me
  attr_accessible :image_id, :provider, :uid, :phone_one, :phone_two

  validates :name, :presence => true
 
  has_many :items, :dependent => :destroy

  has_many :user_addresses, :dependent => :destroy
  has_many :addresses, :through => :user_addresses

  has_many :user_meeting_locations, :dependent => :destroy
  has_many :meeting_locations, :through => :user_meeting_locations

  has_many :meeting_times, :dependent => :destroy

  has_one :preference, :dependent => :destroy

  belongs_to :image 

  after_create :create_preference

  #validates_presence_of :phone_one, :on => :update

  def create_preference
    self.build_preference 
    self.save
  end

  def self.find_for_facebook_oauth(auth, signed_in_resource=nil)
    user = User.where(:provider => auth.provider, :uid => auth.uid).first
   
    unless user
      if User.where(:email => auth.info.email).length > 0
        return nil  
      end 

      user = User.create( 
        name:auth.extra.raw_info.name,
        provider:auth.provider,
        uid:auth.uid,
        email:auth.info.email,
        password:Devise.friendly_token[0,20]
      )
    end

    return user
  end
end
