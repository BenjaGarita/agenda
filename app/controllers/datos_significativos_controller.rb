class DatosSignificativosController < ApplicationController
  # GET /datos_significativos
  # GET /datos_significativos.json
  def index
    @datos_significativos = DatosSignificativo.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @datos_significativos }
    end
  end

  # GET /datos_significativos/1
  # GET /datos_significativos/1.json
  def show
    @datos_significativo = DatosSignificativo.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @datos_significativo }
    end
  end

  # GET /datos_significativos/new
  # GET /datos_significativos/new.json
  def new
    @datos_significativo = DatosSignificativo.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @datos_significativo }
    end
  end

  # GET /datos_significativos/1/edit
  def edit
    @datos_significativo = DatosSignificativo.find(params[:id])
  end

  # POST /datos_significativos
  # POST /datos_significativos.json
  def create
    @datos_significativo = DatosSignificativo.new(params[:datos_significativo])

    respond_to do |format|
      if @datos_significativo.save
        format.html { redirect_to @datos_significativo, notice: 'Datos significativo was successfully created.' }
        format.json { render json: @datos_significativo, status: :created, location: @datos_significativo }
      else
        format.html { render action: "new" }
        format.json { render json: @datos_significativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /datos_significativos/1
  # PUT /datos_significativos/1.json
  def update
    @datos_significativo = DatosSignificativo.find(params[:id])

    respond_to do |format|
      if @datos_significativo.update_attributes(params[:datos_significativo])
        format.html { redirect_to @datos_significativo, notice: 'Datos significativo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @datos_significativo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datos_significativos/1
  # DELETE /datos_significativos/1.json
  def destroy
    @datos_significativo = DatosSignificativo.find(params[:id])
    @datos_significativo.destroy

    respond_to do |format|
      format.html { redirect_to datos_significativos_url }
      format.json { head :no_content }
    end
  end
end
