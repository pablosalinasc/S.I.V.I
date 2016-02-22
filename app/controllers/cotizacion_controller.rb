class CotizacionController < ApplicationController
  before_action :set_cotizacion, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @cotizacion = Cotizacion.all
    respond_with(@cotizacion)
  end

  def show
    respond_with(@cotizacion)
  end

  def new
    @cotizacion = Cotizacion.new
    respond_with(@cotizacion)
  end

  def edit
  end

  def create
    @cotizacion = Cotizacion.new(cotizacion_params)
    @cotizacion.save
    respond_with(@cotizacion)
  end

  def update
    @cotizacion.update(cotizacion_params)
    respond_with(@cotizacion)
  end

  def destroy
    @cotizacion.destroy
    respond_with(@cotizacion)
  end

  private
    def set_cotizacion
      @cotizacion = Cotizacion.find(params[:id])
    end

    def cotizacion_params
      params.require(:cotizacion).permit(:ID_PROVEEDOR, :FECHA_COTIZACION, :MONTO_TOTAL_COTIZACION)
    end
end
