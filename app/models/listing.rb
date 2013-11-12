class Listing < ActiveRecord::Base
	validates :title, :rent, presence: true
	belongs_to :user
	has_and_belongs_to_many :categories
end
