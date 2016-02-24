class VDetalleCambioController < ApplicationController
  before_action :set_v_detalle_cambio, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @v_detalle_cambio = VDetalleCambio.all
    respond_with(@v_detalle_cambio)
  end

  def show
    respond_with(@v_detalle_cambio)
  end

  def new
    @v_detalle_cambio = VDetalleCambio.new
    respond_with(@v_detalle_cambio)
  end

  def edit
  end

  def create
    @v_detalle_cambio = VDetalleCambio.new(v_detalle_cambio_params)
    @v_detalle_cambio.save
    respond_with(@v_detalle_cambio)
  end

  def update
    @v_detalle_cambio.update(v_detalle_cambio_params)
    respond_with(@v_detalle_cambio)
  end

  def destroy
    @v_detalle_cambio.destroy
    respond_with(@v_detalle_cambio)
  end

  private
    def set_v_detalle_cambio
      @v_detalle_cambio = VDetalleCambio.find(params[:id])
    end

    def v_detalle_cambio_params
      params.require(:v_detalle_cambio).permit(:ID_DEVOLUCION, :LINEA_CAMBIO, :NOMBRE_UNICO_INSUMO, :CANTIDAD_CAMBIO, :PRECIO_CAMBIO, :DESCUENTO_CAMBIO)
    end
end
