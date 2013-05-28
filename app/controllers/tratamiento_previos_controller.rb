class TratamientoPreviosController < ApplicationController
  # GET /tratamiento_previos
  # GET /tratamiento_previos.json
  def index
    @tratamiento_previos = TratamientoPrevio.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tratamiento_previos }
    end
  end

  # GET /tratamiento_previos/1
  # GET /tratamiento_previos/1.json
  def show
    @tratamiento_previo = TratamientoPrevio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tratamiento_previo }
    end
  end

  # GET /tratamiento_previos/new
  # GET /tratamiento_previos/new.json
  def new
    @tratamiento_previo = TratamientoPrevio.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tratamiento_previo }
    end
  end

  # GET /tratamiento_previos/1/edit
  def edit
    @tratamiento_previo = TratamientoPrevio.find(params[:id])
  end

  # POST /tratamiento_previos
  # POST /tratamiento_previos.json
  def create
    @tratamiento_previo = TratamientoPrevio.new(params[:tratamiento_previo])

    respond_to do |format|
      if @tratamiento_previo.save
        format.html { redirect_to @tratamiento_previo, notice: 'Tratamiento previo was successfully created.' }
        format.json { render json: @tratamiento_previo, status: :created, location: @tratamiento_previo }
      else
        format.html { render action: "new" }
        format.json { render json: @tratamiento_previo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tratamiento_previos/1
  # PUT /tratamiento_previos/1.json
  def update
    @tratamiento_previo = TratamientoPrevio.find(params[:id])

    respond_to do |format|
      if @tratamiento_previo.update_attributes(params[:tratamiento_previo])
        format.html { redirect_to @tratamiento_previo, notice: 'Tratamiento previo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tratamiento_previo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tratamiento_previos/1
  # DELETE /tratamiento_previos/1.json
  def destroy
    @tratamiento_previo = TratamientoPrevio.find(params[:id])
    @tratamiento_previo.destroy

    respond_to do |format|
      format.html { redirect_to tratamiento_previos_url }
      format.json { head :no_content }
    end
  end
end
