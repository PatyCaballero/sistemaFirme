class GuardiasController < ApplicationController
  before_action :set_guardia, only: [:show, :edit, :update, :destroy]

  # GET /guardias
  # GET /guardias.json
  def index
    @guardias = Guardia.all
  end

  # GET /guardias/1
  # GET /guardias/1.json
  def show
  end

  # GET /guardias/new
  def new
    @guardia = Guardia.new
  end

  # GET /guardias/1/edit
  def edit
  end

  # POST /guardias
  # POST /guardias.json
  def create
    @guardia = Guardia.new(guardia_params)

    respond_to do |format|
      if @guardia.save
        format.html { redirect_to @guardia, notice: 'Guardia was successfully created.' }
        format.json { render :show, status: :created, location: @guardia }
      else
        format.html { render :new }
        format.json { render json: @guardia.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /guardias/1
  # PATCH/PUT /guardias/1.json
  def update
    respond_to do |format|
      if @guardia.update(guardia_params)
        format.html { redirect_to @guardia, notice: 'Guardia was successfully updated.' }
        format.json { render :show, status: :ok, location: @guardia }
      else
        format.html { render :edit }
        format.json { render json: @guardia.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /guardias/1
  # DELETE /guardias/1.json
  def destroy
    @guardia.destroy
    respond_to do |format|
      format.html { redirect_to guardias_url, notice: 'Guardia was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_guardia
      @guardia = Guardia.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def guardia_params
      params.require(:guardia).permit(:nombre, :apellido, :numDocumento, :direccion, :telefono, :fechaNacimiento, :nacionalidad, :estadoCivil, :edad, :grupoSanguineo, :estudios, :nombrePadre, :nombreMadre, :direccionAlternativo, :telUrgencia, :fechaIngreso, :sueldoInicial, :observacion)
    end
end
