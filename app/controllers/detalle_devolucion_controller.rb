class DetalleDevolucionController < ApplicationController
  before_action :set_detalle_devolucion, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @detalle_devolucion = DetalleDevolucion.all
    respond_with(@detalle_devolucion)
  end

  def show
    respond_with(@detalle_devolucion)
  end

  def new
    @detalle_devolucion = DetalleDevolucion.new
    respond_with(@detalle_devolucion)
  end

  def edit
  end

  def create
    @detalle_devolucion = DetalleDevolucion.new(detalle_devolucion_params)
    @detalle_devolucion.save
    respond_with(@detalle_devolucion)
  end

  def update
    @detalle_devolucion.update(detalle_devolucion_params)
    respond_with(@detalle_devolucion)
  end

  def destroy
    @detalle_devolucion.destroy
    respond_with(@detalle_devolucion)
  end

  private
    def set_detalle_devolucion
      @detalle_devolucion = DetalleDevolucion.find(params[:id])
    end

    def detalle_devolucion_params
      params.require(:detalle_devolucion).permit(:ID_DEVOLUCION, :LINEA_DEVOLUCION, :ID_INSUMO, :CANTIDAD_PRODUCTOS)
    end
end
