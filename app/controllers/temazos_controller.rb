class TemazosController < ApplicationController
  # GET /temazos
  # GET /temazos.json
  def index
    #@temazos = Temazo.all
    @temazos = Temazo.find(:all, :conditions => ["id > ?", 100])
    respond_to do |format|
      format.html # index.html.erb
    end
  end

  # GET /temazos/1
  # GET /temazos/1.json
  def show
    @temazo = Temazo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  # GET /temazos/new
  # GET /temazos/new.json
  def new
    @temazo = Temazo.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  # GET /temazos/1/edit
  def edit
    @temazo = Temazo.find(params[:id])
  end

  # POST /temazos
  # POST /temazos.json
  def create
    @temazo = Temazo.new(params[:temazo])

    respond_to do |format|
      if @temazo.save
        format.html { redirect_to temazos_url, notice: 'Un temazo mas en la lista. Gracias!.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  # PUT /temazos/1
  # PUT /temazos/1.json
  def update
    if !params[:clave_admin] || params[:clave_admin]!="dd"
      respond_to do |format|        
          format.html { redirect_to temazos_url, notice: 'No hagas trampas!' }          
      end
      return
    end

    @temazo = Temazo.find(params[:id])

    if params[:delete] && params[:delete]=="true"
      @temazo.destroy

      respond_to do |format|
        format.html { redirect_to temazos_url, notice: 'Temazo borrado.' }
      end
      return
    end

    respond_to do |format|
      if @temazo.update_attributes(params[:temazo])
        format.html { redirect_to @temazo, notice: 'Temazo editado.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

end
