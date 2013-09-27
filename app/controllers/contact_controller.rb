#encoding: utf-8
class ContactController < ApplicationController


	def where
		@categories = NewsCategory.all
    @news_featured = Newsf.find(:all, :limit => 6, :order => 'id desc') 
	end #action aonde


	def dispatch_email
    user_info = params[:user_info]

    if Contatomailer.send_email(user_info).deliver
      flash[:notice] = "Mensagem enviada com sucesso."
    else
      flash[:notice] = "Oops. Sua mensagem não pôde ser enviada."
    end
    redirect_to contact_url
  end

end
