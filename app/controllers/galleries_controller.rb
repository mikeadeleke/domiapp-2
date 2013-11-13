class GalleriesController < ApplicationController
	before_action :load_listing

	def create 
		@gallery = @listing.galleries.new(params[:gallery])
		if @gallery.save
			redirect_to @listing, notice: "Your gallery is a success!"
		else
			redirect_to @listing, alert: "Whoops! We could not make that gallery"
		end
	end

	def destroy 
		@listing = current_user.listings.find(params[:listing_id])
		@gallery = @listing.galleries.find(params[:id])
		@gallery.destroy
		redirect_to @listing, notice: "Gallery go bye-bye"
	end

	private
		def load_listing
			@listing = Listing.find(params[:listing_id])
		end

		def gallery_params
			params.require(:gallery).permit(:name)
		end
end
