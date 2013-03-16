class Image < ActiveRecord::Base
  attr_accessible :item_id, :attachment

  has_attached_file :attachment, 
    :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
    :default_url => "/images/:style/missing.png",
    :storage => :s3,
    :s3_credentials => "#{Rails.root}/config/s3.yml",
    :convert_options => { :all => "-auto-orient" }

  belongs_to :item
end
