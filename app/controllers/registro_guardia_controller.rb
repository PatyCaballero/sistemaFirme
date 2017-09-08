class RegistroGuardiaController < ApplicationController
  before_action :set_registro_guardium, only: [:show, :edit, :update, :destroy]

  # GET /registro_guardia
  # GET /registro_guardia.json
  def index
    @registro_guardia = RegistroGuardium.all
  end

  # GET /registro_guardia/1
  # GET /registro_guardia/1.json
  def show
  end

  # GET /registro_guardia/new
  def new
    @registro_guardium = RegistroGuardium.new
  end

  # GET /registro_guardia/1/edit
  def edit
  end

  # POST /registro_guardia
  # POST /registro_guardia.json
  def create
    @registro_guardium = RegistroGuardium.new(registro_guardium_params)

    respond_to do |format|
      if @registro_guardium.save
        format.html { redirect_to @registro_guardium, notice: 'Registro guardium was successfully created.' }
        format.json { render :show, status: :created, location: @registro_guardium }
      else
        format.html { render :new }
        format.json { render json: @registro_guardium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro_guardia/1
  # PATCH/PUT /registro_guardia/1.json
  def update
    respond_to do |format|
      if @registro_guardium.update(registro_guardium_params)
        format.html { redirect_to @registro_guardium, notice: 'Registro guardium was successfully updated.' }
        format.json { render :show, status: :ok, location: @registro_guardium }
      else
        format.html { render :edit }
        format.json { render json: @registro_guardium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_guardia/1
  # DELETE /registro_guardia/1.json
  def destroy
    @registro_guardium.destroy
    respond_to do |format|
      format.html { redirect_to registro_guardia_url, notice: 'Registro guardium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_guardium
      @registro_guardium = RegistroGuardium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registro_guardium_params
      params.require(:registro_guardium).permit(:nombre, :apellido, :numCedula, :direccion, :telefono, :fechaNacimiento, :fechaInicio)
    end
end
