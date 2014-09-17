class Listing < ActiveRecord::Base
	 if Rails.env.development?
		has_attached_file :avatar, :styles => { :medium => "200x>", :thumb => "100x100>" }, :default_url => "default.jpeg"
else
	    has_attached_file :avatar, :styles => { :medium => "200x>", :thumb => "100x100>" }, :default_url => "default.jpeg",
	                      :storage => :dropbox,
                          :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
                          :path => ":style/:id_:filename"
 end
    end