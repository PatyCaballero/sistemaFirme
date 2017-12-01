class PuestosController < ApplicationController
  before_action :set_puesto, only: [:show, :edit, :update, :destroy] 

  # GET /puestos
  # GET /puestos.json
  def index

      @puestos = Puesto.all

      #if params[:id]
       #@sumar =  @puesto.producto.cantidad - @puesto.cantidad 
     #else
     #end

  end
  def pdf
    #generar pdf
    @puesto = Puesto.find(params[:id])
    if params[:id]
      respond_to do |format|
        format.html
        format.pdf {render template: 'puestos/pdf', pdf: 'pdf'}
      end
    else 
    end

  end
  
  # GET /puestos/1
  # GET /puestos/1.json
  def show
   # @sumar = 0
    # if params[:id]
     #  @sumar =  @puesto.producto.cantidad - @puesto.cantidad 
     #end

      #   @disponible = (@puesto.producto.cantidad - @puesto.cantidad)
 
  end

  # GET /puestos/new
  def new
    @puesto = Puesto.new
    #@clientes = @puesto.clientes.build
    #@puesto = @cliente.puesto.build
    #@regis_guardium.puesto.build
  end

  # GET /puestos/1/edit
  def edit
     #@regis_guardium.puesto.build
  end

  # POST /puestos
  # POST /puestos.json
  def create
    @puesto = Puesto.new(puesto_params)

    #calcular cant de producto disponibles, despues de haber asignado
    #@cont = 0
    #if (@cont <= @puesto.producto.cantidad)
        @sumar =  @puesto.producto.cantidad - @puesto.cantidad  
        @puesto.cantidadDisponible = @sumar
    #end
    respond_to do |format|
      if @puesto.save
        format.html { redirect_to @puesto, notice: 'Puesto Creado.' }
        format.json { render :show, status: :created, location: @puesto }
      else
        format.html { render :new }
        format.json { render json: @puesto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /puestos/1
  # PATCH/PUT /puestos/1.json
  def update
    respond_to do |format|
      if @puesto.update(puesto_params)
        format.html { redirect_to @puesto, notice: 'Puesto Actualizado.' }
        format.json { render :show, status: :ok, location: @puesto }
      else
        format.html { render :edit }
        format.json { render json: @puesto.errors, status: :unprocessable_entity }
      end
    end
  end

def sumar 

  
end

  # DELETE /puestos/1
  # DELETE /puestos/1.json
  def destroy
    @puesto.destroy
    respond_to do |format|
      format.html { redirect_to puestos_url, notice: 'Puesto Eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puesto
      @puesto = Puesto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def puesto_params
      params.require(:puesto).permit(:direccion, :turno, :hora_entrada, :hora_salida, :cliente_id, :regis_guardium_id, :estado, :fechaInicio, :fechaFin, :producto_id, :cantidad, :cantidadDisponible, productos_attributes:[:nomProducto, :caracteristica, :categoria_id, :identificador, :cantidad, :puesto_id])
    end
end 
