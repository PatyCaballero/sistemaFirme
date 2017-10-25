class ControlStockController < ApplicationController
  before_action :set_control_stocks, only: [:show, :edit, :update, :destroy]

  # GET /control_stock
  # GET /control_stock.json
  def index
    @control_stock = ControlStock.all
  end

  # GET /control_stock/1
  # GET /control_stock/1.json
  def show
  end

  # GET /control_stock/new
  def new
    @control_stocks = ControlStock.new
  end

  # GET /control_stock/1/edit
  def edit
  end

  # POST /control_stock
  # POST /control_stock.json
  def create
    @control_stocks = ControlStock.new(control_stocks_params)

    respond_to do |format|
      if @control_stocks.save
        format.html { redirect_to @control_stocks, notice: 'Control stock was successfully created.' }
        format.json { render :show, status: :created, location: @control_stocks }
      else
        format.html { render :new }
        format.json { render json: @control_stocks.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /control_stock/1
  # PATCH/PUT /control_stock/1.json
  def update
    respond_to do |format|
      if @control_stocks.update(control_stocks_params)
        format.html { redirect_to @control_stocks, notice: 'Control stock was successfully updated.' }
        format.json { render :show, status: :ok, location: @control_stocks }
      else
        format.html { render :edit }
        format.json { render json: @control_stocks.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /control_stock/1
  # DELETE /control_stock/1.json
  def destroy
    @control_stocks.destroy
    respond_to do |format|
      format.html { redirect_to control_stock_index_url, notice: 'Control stock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_control_stocks
      @control_stocks = ControlStock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def control_stocks_params
      params.require(:control_stocks).permit(:fecha, :cant_x_puesto)
    end
end
