class StockController < ApplicationController
  before_action :set_stocks, only: [:show, :edit, :update, :destroy]

  # GET /stock
  # GET /stock.json
  def index
    @stocks = Stocks.all
  end

  # GET /stock/1
  # GET /stock/1.json
  def show
  end

  # GET /stock/new
  def new
    @stocks = Stocks.new
  end

  # GET /stock/1/edit
  def edit
  end

  # POST /stock
  # POST /stock.json
  def create
  @stocks = Stocks.new(stocks_params)
    respond_to do |format|
      if @stocks.save
        format.html { redirect_to @stocks, notice: 'Stocks was successfully created.' }
        format.json { render :show, status: :created, location: @stocks }
      else
        format.html { render :new }
        format.json { render json: @stocks.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock/1
  # PATCH/PUT /stock/1.json
  def update
    respond_to do |format|
      if @stocks.update(stocks_params)
        format.html { redirect_to @stocks, notice: 'Stocks was successfully updated.' }
        format.json { render :show, status: :ok, location: @stocks }
      else
        format.html { render :edit }
        format.json { render json: @stocks.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock/1
  # DELETE /stock/1.json
  def destroy
    @stocks.destroy
    respond_to do |format|
      format.html { redirect_to stock_url, notice: 'Stocks was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stocks
      @stocks = Stocks.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stocks_params
      params.require(:stocks).permit( :cantidad, :descripcion, :stock, :producto_id)
    end


end
