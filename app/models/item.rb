class Item < ActiveRecord::Base
	mount_uploader :picture, PictureUploader

  geocoded_by :location
  after_validation :geocode
end
