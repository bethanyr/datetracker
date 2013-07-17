class ImportantdatesController < ApplicationController
	def index
		@importantdates = Importantdate.all
	end
	def new
		@importantdates = Importantdate.new
	end
	
end
