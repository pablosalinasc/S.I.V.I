class VDevolucionController < ApplicationController
  before_action :set_v_devolucion, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @v_devolucion = VDevolucion.all
    respond_with(@v_devolucion)
  end

  def show
    respond_with(@v_devolucion)
  end

  def new
    @v_devolucion = VDevolucion.new
    respond_with(@v_devolucion)
  end

  def edit
  end

  def create
    @v_devolucion = VDevolucion.new(v_devolucion_params)
    @v_devolucion.save
    respond_with(@v_devolucion)
  end

  def update
    @v_devolucion.update(v_devolucion_params)
    respond_with(@v_devolucion)
  end

  def destroy
    @v_devolucion.destroy
    respond_with(@v_devolucion)
  end

  private
    def set_v_devolucion
      @v_devolucion = VDevolucion.find(params[:id])
    end

    def v_devolucion_params
      params.require(:v_devolucion).permit(:ID_DEVOLUCION, :ID_VENTA, :ID_LOCAL, :ID_VENDEDOR, :ID_ESTADO_DEVOLUCION, :FECHA_DEVOLUCION, :MONTO_CAMBIO, :CANT_INSUMOS_NUEVOS_DEVOLUCION, :TIPO_DEVOLUCION, :COMENTARIO_DEVOLUCION, :INSUMOS_DEFECTUOSOS_DEVOLUCION, :NOMBRE_VENDEDOR, :NOMBRE_CLIENTE, :ESTADO_ACTUAL, :DIRECCION_LOCAL)
    end
end
