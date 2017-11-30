class PresupuestooosController < ApplicationController
  before_action :set_presupuestooo, only: [:show, :edit, :update, :destroy]
   # GET /presupuestooos
  # GET /presupuestooos.json
  def index
    @presupuestooos = Presupuestooo.all
     
  end

  def imprimir
      #generar pdf
     @presupuestooo = Presupuestooo.find(params[:id])
     if params[:id]
        respond_to do |format|
        format.html
        format.pdf {render template: 'presupuestooos/imprimir', pdf: 'imprimir'}
      end
      else 
      end
  end
  # GET /presupuestooos/1
  # GET /presupuestooos/1.json

  def show
    #calculo de presupuesto
     
  end

  # GET /presupuestooos/new
  def new
    @presupuestooo = Presupuestooo.new
  end

  # GET /presupuestooos/1/edit
  def edit
  end

  # POST /presupuestooos
  # POST /presupuestooos.json
  def create
    @presupuestooo = Presupuestooo.new(presupuestooo_params)
    @calc = (@presupuestooo.cantGuardia * 78505) + (@presupuestooo.cantHora * 6542)
    @calc = @calc * 26
    @presupuestooo.montoMensual = @calc
    respond_to do |format|
      if @presupuestooo.save
        format.html { redirect_to @presupuestooo, notice: 'Presupuesto creado.' }
        format.json { render :show, status: :created, location: @presupuestooo }
      else
        format.html { render :new }
        format.json { render json: @presupuestooo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /presupuestooos/1
  # PATCH/PUT /presupuestooos/1.json
  def update
    respond_to do |format|
      if @presupuestooo.update(presupuestooo_params)
        format.html { redirect_to @presupuestooo, notice: 'Presupuesto actualizado.' }
        format.json { render :show, status: :ok, location: @presupuestooo }
      else
        format.html { render :edit }
        format.json { render json: @presupuestooo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /presupuestooos/1
  # DELETE /presupuestooos/1.json
  def destroy
    @presupuestooo.destroy
    respond_to do |format|
      format.html { redirect_to presupuestooos_url, notice: 'Presupuesto Eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_presupuestooo
      @presupuestooo = Presupuestooo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def presupuestooo_params
      params.require(:presupuestooo).permit(:fecha, :turno, :cantHora, :cantGuardia, :montoMensual, :turno_id)
    end
end
