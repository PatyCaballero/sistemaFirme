class ListaCalendariosController < ApplicationController
  before_action :set_lista_calendario, only: [:show, :edit, :update, :destroy]

  # GET /lista_calendarios
  # GET /lista_calendarios.json
  def index
    @lista_calendarios = ListaCalendario.all
  end

  # GET /lista_calendarios/1
  # GET /lista_calendarios/1.json
  def show
  end

  # GET /lista_calendarios/new
  def new
    @lista_calendario = ListaCalendario.new
  end

  # GET /lista_calendarios/1/edit
  def edit
  end

  # POST /lista_calendarios
  # POST /lista_calendarios.json
  def create
    @lista_calendario = ListaCalendario.new(lista_calendario_params)

    respond_to do |format|
      if @lista_calendario.save
        format.html { redirect_to @lista_calendario, notice: 'Lista calendario was successfully created.' }
        format.json { render :show, status: :created, location: @lista_calendario }
      else
        format.html { render :new }
        format.json { render json: @lista_calendario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lista_calendarios/1
  # PATCH/PUT /lista_calendarios/1.json
  def update
    respond_to do |format|
      if @lista_calendario.update(lista_calendario_params)
        format.html { redirect_to @lista_calendario, notice: 'Lista calendario was successfully updated.' }
        format.json { render :show, status: :ok, location: @lista_calendario }
      else
        format.html { render :edit }
        format.json { render json: @lista_calendario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lista_calendarios/1
  # DELETE /lista_calendarios/1.json
  def destroy
    @lista_calendario.destroy
    respond_to do |format|
      format.html { redirect_to lista_calendarios_url, notice: 'Lista calendario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lista_calendario
      @lista_calendario = ListaCalendario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lista_calendario_params
      params.require(:lista_calendario).permit(:sueldo)
    end
end
