class ContactController < ApplicationController


	def where
		@categories = NewsCategory.all
	end #action aonde

end
