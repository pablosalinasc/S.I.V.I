class VDetalleVentaController < ApplicationController
  before_action :set_v_detalle_venta, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @v_detalle_venta = VDetalleVenta.all
    respond_with(@v_detalle_venta)
  end

  def show
    respond_with(@v_detalle_venta)
  end

  def new
    @v_detalle_venta = VDetalleVenta.new
    respond_with(@v_detalle_venta)
  end

  def edit
  end

  def create
    @v_detalle_venta = VDetalleVenta.new(v_detalle_venta_params)
    @v_detalle_venta.save
    respond_with(@v_detalle_venta)
  end

  def update
    @v_detalle_venta.update(v_detalle_venta_params)
    respond_with(@v_detalle_venta)
  end

  def destroy
    @v_detalle_venta.destroy
    respond_with(@v_detalle_venta)
  end

  private
    def set_v_detalle_venta
      @v_detalle_venta = VDetalleVenta.find(params[:id])
    end

    def v_detalle_venta_params
      params.require(:v_detalle_venta).permit(:ID_VENTA, :LINEA_VENTA, :NOMBRE_UNICO_INSUMO, :CANTIDAD_VENTA, :PRECIO_VENTA, :DESCUENTO_VENTA)
    end
end
