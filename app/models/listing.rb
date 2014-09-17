class Listing < ActiveRecord::Base
	has_attached_file :avatar, :styles => { :medium => "200x>", :thumb => "100x100>" }, :default_url => "default.jpeg"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end