class ProductosController < ApplicationController
  before_action :set_producto, only: [:show, :edit, :update, :destroy]

  # GET /productos
  # GET /productos.json
  def index
    @productos = Producto.all
    #calcular cant de producto disponibles, despues de haber asignado
    #@disponible = (@producto.cantidad - @producto.puesto.cantidad)
    #@producto.cantidadDisponible = @disponible
    
  end

  # GET /productos/1
  # GET /productos/1.json
 def show
      @sumar = 0
      @producto.producto_puestos.each do |detalle|
      @sumar += detalle.cantidadAsignada 
      end

  end

  def sumar 

  end

  
  # GET /productos/new
  def new
    @producto = Producto.new
  end

  # GET /productos/1/edit
  def edit
  end

  # POST /productos
  # POST /productos.json



  def create
    @producto = Producto.new(producto_params)
    respond_to do |format|
      if @producto.save
        format.html { redirect_to @producto, notice: 'Se ha Creado.' }
        format.json { render :show, status: :created, location: @producto }
      else
        format.html { render :new }
        format.json { render json: @producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /productos/1
  # PATCH/PUT /productos/1.json
  def update
    respond_to do |format|
      #@producto.cantidad = "cantidadTotalStock" 
     #@puesto.cantidad = "cantidadAsignado"
     #@restaStock = cantidadTotalStock - cantidadAsignado
     #@cantidadDisponible = @restaStock


      
      if @producto.update(producto_params)
         

        format.html { redirect_to @producto, notice: 'Se ha actualizado.' }
        format.json { render :show, status: :ok, location: @producto }
      else
        format.html { render :edit }
        format.json { render json: @producto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /productos/1
  # DELETE /productos/1.json
  def destroy
    @producto.destroy
    respond_to do |format|
      format.html { redirect_to productos_url, notice: 'Se ha Eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producto
      @producto = Producto.find(params[:id])
    end
    def set_puesto
       @puesto = Puesto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producto_params
      params.require(:producto).permit(:nomProducto, :caracteristica, :categoria_id, :identificador, :cantidad)
    end
end
