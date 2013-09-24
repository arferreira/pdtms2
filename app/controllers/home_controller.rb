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

  @news_featured = NewsFeatured.find(:all, :limit => 4, :order => 'id desc')	

  end #final featured news

  def secondary_news
  	
  	@news_featured = NewsSecondary.find(:all, :limit => 4, :order => 'id desc')

  end

  def noticiassecundarias 


    
  end
end
