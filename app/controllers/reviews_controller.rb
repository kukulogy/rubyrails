class ReviewsController < ApplicationController

	def create
		@professor = Professor.find(params[:professor_id])
		@reviews = @professor.reviews.create(reviews_param)
		redirect_to professor_path(@professor)
	end

	private
	    def reviews_param
	      params.require(:review).permit(:review)
	    end

end
