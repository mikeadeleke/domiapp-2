class Listing < ActiveRecord::Base
	validates :title, :rent, presence: true
	belongs_to :user
	has_and_belongs_to_many :categories
	has_many :galleries
	has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" }


	scope :published, lambda { where('listings.published_at IS NOT NULL') }
	scope :draft, lambda { where("listings.published_at IS NULL") }
	scope :recent, lambda { published.where("listings.published_at > ?", 1.week.ago.to_date) }
end
