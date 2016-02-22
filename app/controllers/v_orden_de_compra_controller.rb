class VOrdenDeCompraController < ApplicationController
  before_action :set_v_orden_de_compra, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @v_orden_de_compra = VOrdenDeCompra.all
    respond_with(@v_orden_de_compra)
  end

  def show
    respond_with(@v_orden_de_compra)
  end

  def new
    @v_orden_de_compra = VOrdenDeCompra.new
    respond_with(@v_orden_de_compra)
  end

  def edit
  end

  def create
    @v_orden_de_compra = VOrdenDeCompra.new(v_orden_de_compra_params)
    @v_orden_de_compra.save
    respond_with(@v_orden_de_compra)
  end

  def update
    @v_orden_de_compra.update(v_orden_de_compra_params)
    respond_with(@v_orden_de_compra)
  end

  def destroy
    @v_orden_de_compra.destroy
    respond_with(@v_orden_de_compra)
  end

  private
    def set_v_orden_de_compra
      @v_orden_de_compra = VOrdenDeCompra.find(params[:id])
    end

    def v_orden_de_compra_params
      params.require(:v_orden_de_compra).permit(:ID_COMPRA, :ID_PROVEEDOR, :ID_COTIZACION, :ID_ESTADO_COMPRA, :FECHA_COMPRA, :MONTO_TOTAL_COMPRA, :NOMBRE_PROVEEDOR, :FECHA_COTIZACION, :ESTADO_ACTUAL)
    end
end
