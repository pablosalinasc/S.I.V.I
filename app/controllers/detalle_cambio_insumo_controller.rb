class DetalleCambioInsumoController < ApplicationController
  before_action :set_detalle_cambio_insumo, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @detalle_cambio_insumo = DetalleCambioInsumo.all
    if current_usuario.ROL_USUARIO == 'B'
      redirect_to '/restricted_access/index'
    else
      respond_with(@detalle_cambio_insumo)
    end
  end

  def show
    respond_with(@detalle_cambio_insumo)
  end

  def new
    @detalle_cambio_insumo = DetalleCambioInsumo.new
    respond_with(@detalle_cambio_insumo)
  end

  def edit
  end

  def create
    @detalle_cambio_insumo = DetalleCambioInsumo.new(detalle_cambio_insumo_params)
    @detalle_cambio_insumo.save
    respond_with(@detalle_cambio_insumo)
  end

  def update
    @detalle_cambio_insumo.update(detalle_cambio_insumo_params)
    respond_with(@detalle_cambio_insumo)
  end

  def destroy
    @detalle_cambio_insumo.destroy
    respond_with(@detalle_cambio_insumo)
  end

  private
    def set_detalle_cambio_insumo
      @detalle_cambio_insumo = DetalleCambioInsumo.find(params[:id])
    end

    def detalle_cambio_insumo_params
      params.require(:detalle_cambio_insumo).permit(:ID_DEVOLUCION, :LINEA_CAMBIO, :ID_INSUMO, :PRECIO_CAMBIO, :CANTIDAD_CAMBIO, :DESCUENTO_CAMBIO)
    end
end
