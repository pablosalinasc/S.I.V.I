class DetalleCotizacionController < ApplicationController
  before_action :set_detalle_cotizacion, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @detalle_cotizacion = DetalleCotizacion.all
    respond_with(@detalle_cotizacion)
  end

  def show
    respond_with(@detalle_cotizacion)
  end

  def new
    @detalle_cotizacion = DetalleCotizacion.new
    respond_with(@detalle_cotizacion)
  end

  def edit
  end

  def create
    @detalle_cotizacion = DetalleCotizacion.new(detalle_cotizacion_params)
    @detalle_cotizacion.save
    respond_with(@detalle_cotizacion)
  end

  def update
    @detalle_cotizacion.update(detalle_cotizacion_params)
    respond_with(@detalle_cotizacion)
  end

  def destroy
    @detalle_cotizacion.destroy
    respond_with(@detalle_cotizacion)
  end

  private
    def set_detalle_cotizacion
      @detalle_cotizacion = DetalleCotizacion.find(params[:id])
    end

    def detalle_cotizacion_params
      params.require(:detalle_cotizacion).permit(:ID_COTIZACION, :LINEA_COTIZACION, :ID_PROVEEDOR, :ID_INSUMO, :CODIGO_INSUMO, :CANTIDAD_COTIZACION, :PRECIO_COTIZACION)
    end
end
