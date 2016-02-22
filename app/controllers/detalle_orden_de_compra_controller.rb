class DetalleOrdenDeCompraController < ApplicationController
  before_action :set_detalle_orden_de_compra, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @detalle_orden_de_compra = DetalleOrdenDeCompra.all
    respond_with(@detalle_orden_de_compra)
  end

  def show
    respond_with(@detalle_orden_de_compra)
  end

  def new
    @detalle_orden_de_compra = DetalleOrdenDeCompra.new
    respond_with(@detalle_orden_de_compra)
  end

  def edit
  end

  def create
    @detalle_orden_de_compra = DetalleOrdenDeCompra.new(detalle_orden_de_compra_params)
    @detalle_orden_de_compra.save
    respond_with(@detalle_orden_de_compra)
  end

  def update
    @detalle_orden_de_compra.update(detalle_orden_de_compra_params)
    respond_with(@detalle_orden_de_compra)
  end

  def destroy
    @detalle_orden_de_compra.destroy
    respond_with(@detalle_orden_de_compra)
  end

  private
    def set_detalle_orden_de_compra
      @detalle_orden_de_compra = DetalleOrdenDeCompra.find(params[:id])
    end

    def detalle_orden_de_compra_params
      params.require(:detalle_orden_de_compra).permit(:ID_COMPRA, :LINEA_COMPRA, :ID_PROVEEDOR, :ID_INSUMO, :CODIGO_INSUMO, :CANTIDAD_COMPRA, :PRECIO_COMPRA)
    end
end
