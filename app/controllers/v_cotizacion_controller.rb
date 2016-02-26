class VCotizacionController < ApplicationController
  before_action :set_v_cotizacion, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @v_cotizacion = VCotizacion.all
    if usuario_signed_in?
      if current_usuario.ROL_USUARIO != 'A'
        redirect_to '/restricted_access/index'
      else
        respond_with(@v_cotizacion)
      end
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    @v_detalle_cotizacion = VDetalleCotizacion.all
    respond_with(@v_cotizacion,@v_detalle_cotizacion)
  end

  def new
    @v_cotizacion = VCotizacion.new
    respond_with(@v_cotizacion)
  end

  def edit
  end

  def create
    @v_cotizacion = VCotizacion.new(v_cotizacion_params)
    @v_cotizacion.save
    respond_with(@v_cotizacion)
  end

  def update
    @v_cotizacion.update(v_cotizacion_params)
    respond_with(@v_cotizacion)
  end

  def destroy
    @v_cotizacion.destroy
    respond_with(@v_cotizacion)
  end

  private
    def set_v_cotizacion
      @v_cotizacion = VCotizacion.find(params[:id])
    end

    def v_cotizacion_params
      params.require(:v_cotizacion).permit(:ID_COTIZACION, :ID_PROVEEDOR, :FECHA_COTIZACION, :MONTO_TOTAL_COTIZACION, :NOMBRE_PROVEEDOR)
    end
end
