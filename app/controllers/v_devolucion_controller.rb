class VDevolucionController < ApplicationController
  before_action :set_v_devolucion, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @v_devolucion = VDevolucion.all
    if usuario_signed_in?
      if current_usuario.ROL_USUARIO == 'B'
        redirect_to '/restricted_access/index'
      else
        respond_with(@v_devolucion)
      end
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    @v_detalle_devolucion = VDetalleDevolucion.all
    @v_detalle_cambio = VDetalleCambio.all
    respond_with(@v_devolucion,@v_detalle_devolucion,@v_detalle_cambio)
  end

  def new
    @v_devolucion = VDevolucion.new
    respond_with(@v_devolucion)
  end

  def edit
  end

  def create
    @devolucion = Devolucion.new(devolucion_params)
    @devolucion.save
    respond_with(@v_devolucion)
  end

  def update
    @devolucion.update(devolucion_params)
    respond_with(@devolucion)
  end

  def destroy
    @v_devolucion.destroy
    respond_with(@v_devolucion)
  end

  private
    def set_v_devolucion
      @devolucion = Devolucion.find(params[:id])
      @v_devolucion = VDevolucion.find(params[:id])
    end

    def v_devolucion_params
      params.require(:v_devolucion).permit(:ID_DEVOLUCION, :ID_VENTA, :ID_LOCAL, :ID_VENDEDOR, :ID_ESTADO_DEVOLUCION, :FECHA_DEVOLUCION, :MONTO_CAMBIO, :CANT_INSUMOS_NUEVOS_DEVOLUCION, :TIPO_DEVOLUCION, :COMENTARIO_DEVOLUCION, :INSUMOS_DEFECTUOSOS_DEVOLUCION, :NOMBRE_VENDEDOR, :NOMBRE_CLIENTE, :ESTADO_ACTUAL, :DIRECCION_LOCAL)
    end

    def devolucion_params
      params.require(:devolucion).permit(:ID_VENTA, :ID_LOCAL, :ID_VENDEDOR, :ID_ESTADO_DEVOLUCION, :FECHA_DEVOLUCION, :MONTO_CAMBIO, :CANT_INSUMOS_NUEVOS_DEVOLUCION, :TIPO_DEVOLUCION, :COMENTARIO_DEVOLUCION, :INSUMOS_DEFECTUOSOS_DEVOLUCION)
    end

end
