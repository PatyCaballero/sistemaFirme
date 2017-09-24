class PuestoRegistrosController < ApplicationController
  before_action :set_puesto_registro, only: [:show, :edit, :update, :destroy]

  # GET /puesto_registros
  # GET /puesto_registros.json
  def index
    @puesto_registros = PuestoRegistro.all
  end

  # GET /puesto_registros/1
  # GET /puesto_registros/1.json
  def show
  end

  # GET /puesto_registros/new
  def new
    @puesto_registro = PuestoRegistro.new
  end

  # GET /puesto_registros/1/edit
  def edit
  end

  # POST /puesto_registros
  # POST /puesto_registros.json
  def create
    @puesto_registro = PuestoRegistro.new( puesto_registro_params)

    respond_to do |format|
      if @puesto_registro.save
        format.html { redirect_to @puesto_registro, notice: 'Puesto creado.' }
        format.json { render :show, status: :created, location: @puesto_registro }
      else
        format.html { render :new }
        format.json { render json: @puesto_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /puesto_registros/1
  # PATCH/PUT /puesto_registros/1.json
  def update
    respond_to do |format|
      if @puesto_registro.update(puesto_registro_params)
        format.html { redirect_to @puesto_registro, notice: 'Puesto Actualizado.' }
        format.json { render :show, status: :ok, location: @puesto_registro }
      else
        format.html { render :edit }
        format.json { render json: @puesto_registro.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puesto_registros/1
  # DELETE /puesto_registros/1.json
  def destroy
    @puesto_registro.destroy
    respond_to do |format|
      format.html { redirect_to puesto_registros_url, notice: 'Puesto Eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puesto_registro
      @puesto_registro = PuestoRegistro.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def puesto_registro_params
      params.require(:puesto_registro).permit(:puestoNombre, :direccion, :turno, :regis_guardium_id,:horaEntrada, :horaSalida)
    end
end
