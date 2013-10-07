class AgendaController < ApplicationController

	def events
		@eventos = Event.page(params['page']).per(10)
	end #action eventos

end
