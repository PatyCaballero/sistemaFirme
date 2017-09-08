class RegistroPuestosController < ApplicationController
  before_action :set_registro_puesto, only: [:show, :edit, :update, :destroy]

  # GET /registro_puestos
  # GET /registro_puestos.json
  def index
    @registro_puestos = RegistroPuesto.all
  end

  # GET /registro_puestos/1
  # GET /registro_puestos/1.json
  def show
  end

  # GET /registro_puestos/new
  def new
    @registro_puesto = RegistroPuesto.new
  end

  # GET /registro_puestos/1/edit
  def edit
  end

  # POST /registro_puestos
  # POST /registro_puestos.json
  def create
    @registro_puesto = RegistroPuesto.new(registro_puesto_params)

    respond_to do |format|
      if @registro_puesto.save
        format.html { redirect_to @registro_puesto, notice: 'Registro puesto was successfully created.' }
        format.json { render :show, status: :created, location: @registro_puesto }
      else
        format.html { render :new }
        format.json { render json: @registro_puesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro_puestos/1
  # PATCH/PUT /registro_puestos/1.json
  def update
    respond_to do |format|
      if @registro_puesto.update(registro_puesto_params)
        format.html { redirect_to @registro_puesto, notice: 'Registro puesto was successfully updated.' }
        format.json { render :show, status: :ok, location: @registro_puesto }
      else
        format.html { render :edit }
        format.json { render json: @registro_puesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_puestos/1
  # DELETE /registro_puestos/1.json
  def destroy
    @registro_puesto.destroy
    respond_to do |format|
      format.html { redirect_to registro_puestos_url, notice: 'Registro puesto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_puesto
      @registro_puesto = RegistroPuesto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registro_puesto_params
      params.require(:registro_puesto).permit(:nombrePuesto, :direccion, :guardia, :turno, :horaEntrada, :horaSalida, :desde, :hasta)
    end
end
