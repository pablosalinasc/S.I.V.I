class DevolucionController < ApplicationController
  before_action :set_devolucion, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @devolucion = Devolucion.all
    if usuario_signed_in?
      if current_usuario.ROL_USUARIO == 'B'
        redirect_to '/restricted_access/index'
      else
        respond_with(@devolucion)
      end
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    @detalle_devolucion = DetalleDevolucion.all
    respond_with(@devolucion,@detalle_devolucion)
  end

  def new
    @devolucion = Devolucion.new
    @devolucion.DetalleDevolucion.build
    respond_with(@devolucion)
  end

  def edit
    @devolucion.DetalleDevolucion.build
  end

  def create
    @devolucion = Devolucion.new(devolucion_params)
    @devolucion.save
    redirect_to v_devolucion_index_path

  end

  def update
    @devolucion.update(devolucion_params)
    redirect_to v_devolucion_index_path
  end

  def destroy
    @devolucion.destroy
    respond_with(@devolucion)
  end

  private
    def set_devolucion
      @devolucion = Devolucion.find(params[:id])
    end

    def devolucion_params
      params.require(:devolucion).permit(:ID_VENTA, :ID_LOCAL, :ID_VENDEDOR, :ID_ESTADO_DEVOLUCION, :FECHA_DEVOLUCION,
      :MONTO_CAMBIO, :CANT_INSUMOS_NUEVOS_DEVOLUCION, :TIPO_DEVOLUCION, :COMENTARIO_DEVOLUCION, :INSUMOS_DEFECTUOSOS_DEVOLUCION,
      DetalleDevolucion_attributes: [:ID_DEVOLUCION, :LINEA_DEVOLUCION, :ID_INSUMO, :CANTIDAD_PRODUCTOS, :_destroy])
    end
end
