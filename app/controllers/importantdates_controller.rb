class ImportantdatesController < ApplicationController
	def index
		@importantdates = Importantdate.where("importantdate >= (?)", Date.today).order("importantdate asc")
	end
	def new
		@importantdates = Importantdate.new
	end
	def create
		@importantdate = Importantdate.new(params[:importantdate])
  		if @importantdate.save
  		  flash[:notice] = t(:date_added)
  		  redirect_to @importantdate
  	    else
  	      flash[:notice] = "Did not save"
  	      redirect_to @importantdate
  	    end
	end
	def show
      @importantdate = Importantdate.find(params[:id])
    end

end

