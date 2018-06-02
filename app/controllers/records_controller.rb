class RecordsController < ApplicationController
	def destroy
		@last_url = URI(request.referer || '').path
		@record = Record.find(params[:id])
		@record.destroy

		respond_to do |format|
		  format.html { redirect_to @last_url, :flash => { :error => 'Professor was successfully deleted.' } }
		  format.json { head :no_content }
		end
	end

end
