class VStockInsumoController < ApplicationController
  before_action :set_v_stock_insumo, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @v_stock_insumo = VStockInsumo.all
    respond_with(@v_stock_insumo)
  end

  def show
    respond_with(@v_stock_insumo)
  end

  def new
    @v_stock_insumo = VStockInsumo.new
    respond_with(@v_stock_insumo)
  end

  def edit
  end

  def create
    @v_stock_insumo = VStockInsumo.new(v_stock_insumo_params)
    @v_stock_insumo.save
    respond_with(@v_stock_insumo)
  end

  def update
    @v_stock_insumo.update(v_stock_insumo_params)
    respond_with(@v_stock_insumo)
  end

  def destroy
    @v_stock_insumo.destroy
    respond_with(@v_stock_insumo)
  end

  private
    def set_v_stock_insumo
      @v_stock_insumo = VStockInsumo.find(params[:id])
    end

    def v_stock_insumo_params
      params.require(:v_stock_insumo).permit(:ID_INSUMO, :DIRECCION_LOCAL, :STOCK_INSUMO_LOCAL)
    end
end
