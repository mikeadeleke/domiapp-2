class Listing < ActiveRecord::Base
	validates :title, :rent, presence: true
end
