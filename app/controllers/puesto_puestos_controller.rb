class PuestoPuestosController < ApplicationController
  before_action :set_puesto_puesto, only: [:show, :edit, :update, :destroy]

  # GET /puesto_puestos
  # GET /puesto_puestos.json
  def index
    @puesto_puestos = PuestoPuesto.all
  end

  # GET /puesto_puestos/1
  # GET /puesto_puestos/1.json
  def show
  end

  # GET /puesto_puestos/new
  def new
    @puesto_puesto = PuestoPuesto.new
  end

  # GET /puesto_puestos/1/edit
  def edit
  end

  # POST /puesto_puestos
  # POST /puesto_puestos.json
  def create
    @puesto_puesto = PuestoPuesto.new(puesto_puesto_params)

    respond_to do |format|
      if @puesto_puesto.save
        format.html { redirect_to @puesto_puesto, notice: 'Puesto puesto was successfully created.' }
        format.json { render :show, status: :created, location: @puesto_puesto }
      else
        format.html { render :new }
        format.json { render json: @puesto_puesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /puesto_puestos/1
  # PATCH/PUT /puesto_puestos/1.json
  def update
    respond_to do |format|
      if @puesto_puesto.update(puesto_puesto_params)
        format.html { redirect_to @puesto_puesto, notice: 'Puesto puesto was successfully updated.' }
        format.json { render :show, status: :ok, location: @puesto_puesto }
      else
        format.html { render :edit }
        format.json { render json: @puesto_puesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puesto_puestos/1
  # DELETE /puesto_puestos/1.json
  def destroy
    @puesto_puesto.destroy
    respond_to do |format|
      format.html { redirect_to puesto_puestos_url, notice: 'Puesto puesto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puesto_puesto
      @puesto_puesto = PuestoPuesto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def puesto_puesto_params
      params.require(:puesto_puesto).permit(:puesto_id, :guardia_id)
    end
end
