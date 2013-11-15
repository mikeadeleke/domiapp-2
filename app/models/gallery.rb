class Gallery < ActiveRecord::Base
	belongs_to :listing
	mount_uploader :image, ImageUploader
	
	validates :name, presence: true
	validates :listing_should_be_published

	def listing_should_be_published 
		errors.add(:listing_id, "is not published yet") if listing && !listing.published?
	end
end
