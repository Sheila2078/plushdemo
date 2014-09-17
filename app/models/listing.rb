class Listing < ActiveRecord::Base
	has_attached_file :avatar, :styles => { :medium => "200x>", :thumb => "100x100>" }, :default_url => "default.jpeg",
	                  :storage => :dropbox,
                      :dropbox_credentials => Rails.root.join("config/dropbox.yml")
    end