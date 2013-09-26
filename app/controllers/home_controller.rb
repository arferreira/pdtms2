class HomeController < ApplicationController
  def index

  	#listando as noticias destaque
  	@featured_news = featured_news
  	# ok
  	# Listagem de noticias secundarias
  	@secondary_news = secondary_news
  	#ok

  end

  # Método para trazer as noticias destaques
  def featured_news

  @news_featured = Newsf.find(:all, :limit => 4, :order => 'id desc')	

  end #final featured news

  def secondary_news
  	
  	@news_featured = Newss.find(:all, :limit => 4, :order => 'id desc')

  end

  def noticiassecundarias 


    
  end

  def newsfall

    @news_featured = Newsf.paginate(:page => params[:page], :per_page => 2)
    
  end

  def newssall

    @news_secondary = Newss.paginate(:page => params[:page], :per_page => 1)
    
  end

  def shownoticesec

    @news_secondary = Newss.find(params[:id])

    respond_to do |format|
      format.html # shownoticesec.html.erb
      format.json { render json: @news_secondary }
    end

  end # show news secundary individual

end
