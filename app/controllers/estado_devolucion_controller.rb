class EstadoDevolucionController < ApplicationController
  before_action :set_estado_devolucion, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @estado_devolucion = EstadoDevolucion.all
    if usuario_signed_in?
      if current_usuario.ROL_USUARIO == 'B'
        redirect_to '/restricted_access/index'
      else
        respond_with(@estado_devolucion)
      end
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    respond_with(@estado_devolucion)
  end

  def new
    @estado_devolucion = EstadoDevolucion.new
    respond_with(@estado_devolucion)
  end

  def edit
  end

  def create
    @estado_devolucion = EstadoDevolucion.new(estado_devolucion_params)
    @estado_devolucion.save
    respond_with(@estado_devolucion)
  end

  def update
    @estado_devolucion.update(estado_devolucion_params)
    respond_with(@estado_devolucion)
  end

  def destroy
    @estado_devolucion.destroy
    respond_with(@estado_devolucion)
  end

  private
    def set_estado_devolucion
      @estado_devolucion = EstadoDevolucion.find(params[:id])
    end

    def estado_devolucion_params
      params.require(:estado_devolucion).permit(:DESCRIPCION_ESTADO_DEVOLUCION)
    end
end
