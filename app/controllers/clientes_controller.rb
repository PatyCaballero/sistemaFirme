class ClientesController < ApplicationController
  before_action :set_cliente, only: [:show, :edit, :update, :destroy]

  # GET /clientes
  # GET /clientes.json
  def index
    if params[:search].nil? 
      @clientes = Cliente.all
    else
      @clientes =  Cliente.where("cliente LIKE ?", "%#{params["search"]}%")
      #Cliente.where("cliente LIKE ? = '#{params["search"]}'")

      
    end
    

    #@clientes =  Cliente.paginate(:page => params[:page])

   # Cliente.order(sort_column + '' + sort_direction).paginate(:per_page => 5, params[:page])
  end
#@products = Product.search(params[:search]).order(sort_column + ' ' + sort_direction).paginate(:per_page => 5, :page => params[:page])
#end

  # GET /clientes/1
  # GET /clientes/1.json
  def show
  end

  # GET /clientes/new
  def new
    @cliente = Cliente.new
  end

  # GET /clientes/1/edit
  def edit
  end

  # POST /clientes
  # POST /clientes.json
  def create
    @cliente = Cliente.new(cliente_params)

    respond_to do |format|
      if @cliente.save
        format.html { redirect_to @cliente, notice: 'Se ha Creado.' }
        format.json { render :show, status: :created, location: @cliente }
      else
        format.html { render :new }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clientes/1
  # PATCH/PUT /clientes/1.json
  def update
    respond_to do |format|
      if @cliente.update(cliente_params)
        format.html { redirect_to @cliente, notice: 'Se Actualizo.' }
        format.json { render :show, status: :ok, location: @cliente }
      else
        format.html { render :edit }
        format.json { render json: @cliente.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clientes/1
  # DELETE /clientes/1.json
  def destroy
    @cliente.destroy
    respond_to do |format|
      format.html { redirect_to clientes_url, notice: 'Se ha Eliminado.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cliente
      @cliente = Cliente.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cliente_params
      params.require(:cliente).permit(:cliente, :numRuc, :direccion, :telefono, :estado)
    end
end

