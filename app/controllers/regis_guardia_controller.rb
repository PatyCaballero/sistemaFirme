class RegisGuardiaController < ApplicationController
  before_action :set_regis_guardium, only: [:show, :edit, :update, :destroy]

  # GET /regis_guardia
  # GET /regis_guardia.json
  def index
    @regis_guardia = RegisGuardium.all
  end

  # GET /regis_guardia/1
  # GET /regis_guardia/1.json
  def show
  end

  # GET /regis_guardia/new
  def new
    @regis_guardium = RegisGuardium.new
  end

  # GET /regis_guardia/1/edit
  def edit
  end

  # POST /regis_guardia
  # POST /regis_guardia.json
  def create
    @regis_guardium = RegisGuardium.new(regis_guardium_params)

    respond_to do |format|
      if @regis_guardium.save
        format.html { redirect_to @regis_guardium, notice: 'Regis guardium was successfully created.' }
        format.json { render :show, status: :created, location: @regis_guardium }
      else
        format.html { render :new }
        format.json { render json: @regis_guardium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /regis_guardia/1
  # PATCH/PUT /regis_guardia/1.json
  def update
    respond_to do |format|
      if @regis_guardium.update(regis_guardium_params)
        format.html { redirect_to @regis_guardium, notice: 'Regis guardium was successfully updated.' }
        format.json { render :show, status: :ok, location: @regis_guardium }
      else
        format.html { render :edit }
        format.json { render json: @regis_guardium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /regis_guardia/1
  # DELETE /regis_guardia/1.json
  def destroy
    @regis_guardium.destroy
    respond_to do |format|
      format.html { redirect_to regis_guardia_url, notice: 'Regis guardium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_regis_guardium
      @regis_guardium = RegisGuardium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def regis_guardium_params
      params.require(:regis_guardium).permit(:nombre, :apellido, :numDocumento, :direccion, :telefono, :fechaNacimiento)
    end
end
