class TransicionEstadosDevolucionController < ApplicationController
  before_action :set_transicion_estados_devolucion, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  def index
    @transicion_estados_devolucion = TransicionEstadosDevolucion.all
    if usuario_signed_in?
      if current_usuario.ROL_USUARIO != 'A'
        redirect_to '/restricted_access/index'
      else
        respond_with(@transicion_estados_devolucion)
      end
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    respond_with(@transicion_estados_devolucion)
  end

  def new
    @transicion_estados_devolucion = TransicionEstadosDevolucion.new
    respond_with(@transicion_estados_devolucion)
  end

  def edit
  end

  def create
    @transicion_estados_devolucion = TransicionEstadosDevolucion.new(transicion_estados_devolucion_params)
    @transicion_estados_devolucion.save
    respond_with(@transicion_estados_devolucion)
  end

  def update
    @transicion_estados_devolucion.update(transicion_estados_devolucion_params)
    respond_with(@transicion_estados_devolucion)
  end

  def destroy
    @transicion_estados_devolucion.destroy
    respond_with(@transicion_estados_devolucion)
  end

  private
    def set_transicion_estados_devolucion
      @transicion_estados_devolucion = TransicionEstadosDevolucion.find(params[:id])
    end

    def transicion_estados_devolucion_params
      params.require(:transicion_estados_devolucion).permit(:ID_ESTADO_DEVOLUCION_DESDE, :ID_ESTADO_DEVOLUCION_HASTA)
    end
end
