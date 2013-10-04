#encoding: utf-8
class HomeController < ApplicationController
   helper_method :survey, :participant
  
  def index

  	#listando as noticias destaque
  	@featured_news = featured_news
  	# ok
  	# Listagem de noticias secundarias
  	@secondary_news = secondary_news
  	#ok

    @artigos = Article.find(:all, :limit => 8, :order => 'id desc') 

    @moves = feedmoves

    @poll = survey

    @galerias = feedgaleria

    @galleryall = countgaleria

    #incrementadores
    @count = 0
    @aux = 0

  end

  def countgaleria
    @galerias = Gallery.find(:all, :limit => 2, :order => 'id desc')
  end

  # create a new attempt to this survey
  def new
    @attempt = survey.attempts.new
    # build a number of possible answers equal to the number of options
    survey.questions.size.times { @attempt.answers.build }
  end

  # create a new attempt in this survey
  # an attempt needs to have a participant assigned
  def create
    @attempt = survey.attempts.new(params[:attempt])
    # ensure that current user is assigned with this attempt
    @attempt.participant = participant
    if @attempt.valid? and @attempt.save
      redirect_to contests_path
    else
      render :action => :new
    end
  end

  def participant
    @participant ||= current_user
  end

  def survey
    @survey ||= Survey::Survey.active.first
  end

  # Método para trazer as noticias destaques
  def featured_news

  @news_featured = Newsf.find(:all, :limit => 4, :order => 'id desc')	

  end #final featured news

  def secondary_news
  	
  	@news_featured = Newss.find(:all, :limit => 4, :order => 'id desc')

  end

  def feedmoves
    
    @moves = Move.all

  end


  def noticiassecundarias 

   # metodo nao utilizado
    
  end

  def newsfall

    @news_featured = Newsf.page(params['page']).per(2) #Newsf.paginate(:page => params[:page], :per_page => 2)
    
  end

  def newssall

    @news_secondary = Newss.page(params['page']).per(2) #Newss.paginate(:page => params[:page], :per_page => 1)
    
  end

  def shownoticesec 

    @news_secondary = Newss.find(params[:id])
    @news_featured = Newsf.find(:all, :limit => 6, :order => 'id desc') 

    respond_to do |format|
      format.html # shownoticesec.html.erb
      format.json { render json: @news_secondary }
    end

  end # show news secundary individual

    def shownoticedef 

    @news_secondary = Newsf.find(params[:id])
    @news_featured = Newsf.find(:all, :limit => 6, :order => 'id desc') 

    respond_to do |format|
      format.html # shownoticesec.html.erb
      format.json { render json: @news_secondary }
    end

  end # show news secundary individual

  def readarticle 

    @news_secondary = Article.find(params[:id])
    @news_featured = Newsf.find(:all, :limit => 6, :order => 'id desc') 

    respond_to do |format|
      format.html # shownoticesec.html.erb
      format.json { render json: @news_secondary }
    end

  end # show news secundary individual

  def dispatch_email
    user_info = params[:user_info]
    if ContactMailer.send_email(user_info).deliver
      flash[:notice] = "Mensagem enviada."
    else
      flash[:notice] = "Oops. Sua mensagem não pôde ser enviada."
    end
    redirect_to contact_url
  end

  def feedgaleria
    
    galerias = Gallery.last

    @foto = Foto.where(gallery_id: galerias )
  end

end
