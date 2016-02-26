class VDetalleCotizacionController < ApplicationController
  before_action :set_v_detalle_cotizacion, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @v_detalle_cotizacion = VDetalleCotizacion.all
    respond_with(@v_detalle_cotizacion)
  end

  def show
    respond_with(@v_detalle_cotizacion)
  end

  def new
    @v_detalle_cotizacion = VDetalleCotizacion.new
    respond_with(@v_detalle_cotizacion)
  end

  def edit
  end

  def create
    @v_detalle_cotizacion = VDetalleCotizacion.new(v_detalle_cotizacion_params)
    @v_detalle_cotizacion.save
    respond_with(@v_detalle_cotizacion)
  end

  def update
    @v_detalle_cotizacion.update(v_detalle_cotizacion_params)
    respond_with(@v_detalle_cotizacion)
  end

  def destroy
    @v_detalle_cotizacion.destroy
    respond_with(@v_detalle_cotizacion)
  end

  private
    def set_v_detalle_cotizacion
      @v_detalle_cotizacion = VDetalleCotizacion.find(params[:id])
    end

    def v_detalle_cotizacion_params
      params.require(:v_detalle_cotizacion).permit(:ID_COTIZACION, :LINEA_COTIZACION, :ID_PROVEEDOR, :ID_INSUMO, :CODIGO_INSUMO, :CANTIDAD_COTIZACION, :PRECIO_COTIZACION, :NOMBRE_UNICO_INSUMO)
    end
end
