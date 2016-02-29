class CotizacionController < ApplicationController
  before_action :set_cotizacion, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @cotizacion = Cotizacion.all
    if usuario_signed_in?

      if current_usuario.ROL_USUARIO != 'A'
        redirect_to '/restricted_access/index'
      else
        respond_with(@cotizacion)
      end
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    respond_with(@cotizacion)
  end

  def new
    @cotizacion = Cotizacion.new
    @cotizacion.DetalleCotizacion.build
    respond_with(@cotizacion)

  end

  def edit
    @cotizacion.DetalleCotizacion.build
  end

  def create
    @cotizacion = Cotizacion.new(cotizacion_params)
    @cotizacion.save
    redirect_to v_cotizacion_index_path
  end

  def update
    @cotizacion.update(cotizacion_params)
    redirect_to v_cotizacion_index_path
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
      params.require(:cotizacion).permit(:ID_COTIZACION,:ID_PROVEEDOR, :FECHA_COTIZACION, :MONTO_TOTAL_COTIZACION, DetalleCotizacion_attributes: [:ID_COTIZACION,:ID_CODIGO_PROVEEDOR,:LINEA_COTIZACION, :CANTIDAD_COTIZACION, :PRECIO_COTIZACION] )
    end
end
