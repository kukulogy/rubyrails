class RatesController < ApplicationController

	def create
		@classroom = Classroom.find(params[:classroom_id])
	  @rates = @classroom.rates.create(professor_id: params[:professor_id], review: params[:rate][:review], rating: params[:rate][:rating] )

	  respond_to do |format|
		  if @classroom.save
		  	  format.html { redirect_to classroom_path(@classroom), notice: 'Review was successfully created.' }
		  	  format.json { render :show, status: :created, location: @professor }
	  	else
	  	  format.html { redirect_to classroom_path(@classroom), :flash => { :error => @rates.errors.full_messages.to_sentence } }
	  	  format.json { render json: @classroom.errors, status: :unprocessable_entity }
	  	end
  	end
	end

	private
    def reviews_param
      params.require(:rate).permit(:review)
    end

end
