class Listing < ActiveRecord::Base
	validates :title, :rent, presence: true
	belongs_to :user
end
