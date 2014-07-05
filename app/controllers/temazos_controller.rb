class TemazosController < ApplicationController
  # GET /temazos
  # GET /temazos.json
  def index
    @temazos = Temazo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @temazos }
    end
  end

  # GET /temazos/1
  # GET /temazos/1.json
  def show
    @temazo = Temazo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @temazo }
    end
  end

  # GET /temazos/new
  # GET /temazos/new.json
  def new
    @temazo = Temazo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @temazo }
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
        format.json { render json: @temazo, status: :created, location: @temazo }
      else
        format.html { render action: "new" }
        format.json { render json: @temazo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /temazos/1
  # PUT /temazos/1.json
  def update
    @temazo = Temazo.find(params[:id])

    respond_to do |format|
      if @temazo.update_attributes(params[:temazo])
        format.html { redirect_to @temazo, notice: 'Temazo editado.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @temazo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /temazos/1
  # DELETE /temazos/1.json
  def destroy
    @temazo = Temazo.find(params[:id])
    @temazo.destroy

    respond_to do |format|
      format.html { redirect_to temazos_url }
      format.json { head :no_content }
    end
  end
end
