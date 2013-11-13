class Gallery < ActiveRecord::Base
	belongs_to :listing
	mount_uploader :image, ImageUploader
	validates :name, presence: true
end
