class EstadoOrdenDeCompraController < ApplicationController
  before_action :set_estado_orden_de_compra, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @estado_orden_de_compra = EstadoOrdenDeCompra.all
    if usuario_signed_in?
      if current_usuario.ROL_USUARIO != 'A'
        redirect_to '/restricted_access/index'
      else
        respond_with(@estado_orden_de_compra)
      end
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    respond_with(@estado_orden_de_compra)
  end

  def new
    @estado_orden_de_compra = EstadoOrdenDeCompra.new
    respond_with(@estado_orden_de_compra)
  end

  def edit
  end

  def create
    @estado_orden_de_compra = EstadoOrdenDeCompra.new(estado_orden_de_compra_params)
    @estado_orden_de_compra.save
    respond_with(@estado_orden_de_compra)
  end

  def update
    @estado_orden_de_compra.update(estado_orden_de_compra_params)
    respond_with(@estado_orden_de_compra)
  end

  def destroy
    @estado_orden_de_compra.destroy
    respond_with(@estado_orden_de_compra)
  end

  private
    def set_estado_orden_de_compra
      @estado_orden_de_compra = EstadoOrdenDeCompra.find(params[:id])
    end

    def estado_orden_de_compra_params
      params.require(:estado_orden_de_compra).permit(:DESCRIPCION_ESTADO_COMPRA)
    end
end
