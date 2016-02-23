class VDetalleDevolucionController < ApplicationController
  before_action :set_v_detalle_devolucion, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @v_detalle_devolucion = VDetalleDevolucion.all
    respond_with(@v_detalle_devolucion)
  end

  def show
    respond_with(@v_detalle_devolucion)
  end

  def new
    @v_detalle_devolucion = VDetalleDevolucion.new
    respond_with(@v_detalle_devolucion)
  end

  def edit
  end

  def create
    @v_detalle_devolucion = VDetalleDevolucion.new(v_detalle_devolucion_params)
    @v_detalle_devolucion.save
    respond_with(@v_detalle_devolucion)
  end

  def update
    @v_detalle_devolucion.update(v_detalle_devolucion_params)
    respond_with(@v_detalle_devolucion)
  end

  def destroy
    @v_detalle_devolucion.destroy
    respond_with(@v_detalle_devolucion)
  end

  private
    def set_v_detalle_devolucion
      @v_detalle_devolucion = VDetalleDevolucion.find(params[:id])
    end

    def v_detalle_devolucion_params
      params.require(:v_detalle_devolucion).permit(:ID_DEVOLUCION, :LINEA_DEVOLUCION, :NOMBRE_UNICO_INSUMO, :CANTIDAD_PRODUCTOS)
    end
end
