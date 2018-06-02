class ClassroomsController < ApplicationController
	def new
	end

	def index
		@classrooms = Classroom.all
	end

	def new
		@classroom = Classroom.new
		@professors = Professor.all
	end

	def edit
		@classroom = Classroom.find(params[:id])
		@records = @classroom.record
		@professors = Professor.all
	end

	def create
		@classroom = Classroom.new(classroom_params)
		@record = @classroom.record.new(record_params)

				
		if @classroom.save and @record.save
		   redirect_to classrooms_path
		 else
	 		@professors = Professor.all
			render 'new'
	    end
	end

	def destroy
		@classroom = Classroom.find(params[:id])
	  	@classroom.destroy
		respond_to do |format|
			format.html { redirect_to classrooms_url, :flash => { :error => 'Class was successfully destroyed.' }  }
		    format.json { head :no_content }
		end
	end


	def update
		@classroom = Classroom.find(params[:id])
		@professors = Professor.all


		if @classroom.update(classroom_params)
			params_set = params[:classroom][:professor_id].map(&:to_i)
			Record.destroy(@classroom.record.ids)
			params_set.each do |a|
				@classroom.record.create(professor_id: a)
			end
	   		redirect_to @classroom
		else
		   render 'edit'
		end
	end

	def show
		@classroom = Classroom.find(params[:id])
	end

	# DELETE /professors/1
	# DELETE /professors/1.json
	def destroy_professor
	  @professor.destroy
	  respond_to do |format|
	    format.html { redirect_to professors_url,  :flash => { :error => 'Professor was successfully destroyed.' } }
	    format.json { head :no_content }
	  end
	end


	private
	  def classroom_params
	    params.require(:classroom).permit(:title, :text, :professor)
	  end	 

   	def record_params
	    params.require(:classroom).permit(:professor_ids)
	  end


end
