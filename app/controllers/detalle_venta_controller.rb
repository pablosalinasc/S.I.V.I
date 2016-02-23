class DetalleVentaController < ApplicationController
  before_action :set_detalle_venta, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @detalle_venta = DetalleVenta.all
    if current_usuario.ROL_USUARIO == 'B'
      redirect_to '/restricted_access/index'
    else
      respond_with(@detalle_venta)
    end
  end

  def show
    respond_with(@detalle_venta)
  end

  def new
    @detalle_venta = DetalleVenta.new
    respond_with(@detalle_venta)
  end

  def edit
  end

  def create
    @detalle_venta = DetalleVenta.new(detalle_venta_params)
    @detalle_venta.save
    respond_with(@detalle_venta)
  end

  def update
    @detalle_venta.update(detalle_venta_params)
    respond_with(@detalle_venta)
  end

  def destroy
    @detalle_venta.destroy
    respond_with(@detalle_venta)
  end

  private
    def set_detalle_venta
      @detalle_venta = DetalleVenta.find(params[:id])
    end

    def detalle_venta_params
      params.require(:detalle_venta).permit(:ID_VENTA, :LINEA_VENTA, :ID_INSUMO, :CANTIDAD_VENTA, :PRECIO_VENTA, :DESCUENTO_VENTA)
    end
end
