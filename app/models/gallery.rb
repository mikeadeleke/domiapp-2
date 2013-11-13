class Gallery < ActiveRecord::Base
	belongs_to :listing

	validates :name, presence: true
end
