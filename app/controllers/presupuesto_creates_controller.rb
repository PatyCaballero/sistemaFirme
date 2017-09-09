class PresupuestoCreatesController < ApplicationController
  before_action :set_presupuesto_create, only: [:show, :edit, :update, :destroy]

  # GET /presupuesto_creates
  # GET /presupuesto_creates.json
  def index
    @presupuesto_creates = PresupuestoCreate.all
  end

  # GET /presupuesto_creates/1
  # GET /presupuesto_creates/1.json
  def show
  end

  # GET /presupuesto_creates/new
  def new
    @presupuesto_create = PresupuestoCreate.new
  end

  # GET /presupuesto_creates/1/edit
  def edit
  end

  # POST /presupuesto_creates
  # POST /presupuesto_creates.json
  def create
    @presupuesto_create = PresupuestoCreate.new(presupuesto_create_params)

    respond_to do |format|
      if @presupuesto_create.save
        format.html { redirect_to @presupuesto_create, notice: 'Presupuesto create was successfully created.' }
        format.json { render :show, status: :created, location: @presupuesto_create }
      else
        format.html { render :new }
        format.json { render json: @presupuesto_create.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presupuesto_creates/1
  # PATCH/PUT /presupuesto_creates/1.json
  def update
    respond_to do |format|
      if @presupuesto_create.update(presupuesto_create_params)
        format.html { redirect_to @presupuesto_create, notice: 'Presupuesto create was successfully updated.' }
        format.json { render :show, status: :ok, location: @presupuesto_create }
      else
        format.html { render :edit }
        format.json { render json: @presupuesto_create.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presupuesto_creates/1
  # DELETE /presupuesto_creates/1.json
  def destroy
    @presupuesto_create.destroy
    respond_to do |format|
      format.html { redirect_to presupuesto_creates_url, notice: 'Presupuesto create was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presupuesto_create
      @presupuesto_create = PresupuestoCreate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def presupuesto_create_params
      params.require(:presupuesto_create).permit(:fecha, :turno, :cantHora, :cantGuardia, :armamento, :montoMensual)
    end
end
