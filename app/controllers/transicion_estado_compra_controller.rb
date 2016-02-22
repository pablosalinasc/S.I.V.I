class TransicionEstadoCompraController < ApplicationController
  before_action :set_transicion_estado_compra, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @transicion_estado_compra = TransicionEstadoCompra.all
    respond_with(@transicion_estado_compra)
  end

  def show
    respond_with(@transicion_estado_compra)
  end

  def new
    @transicion_estado_compra = TransicionEstadoCompra.new
    respond_with(@transicion_estado_compra)
  end

  def edit
  end

  def create
    @transicion_estado_compra = TransicionEstadoCompra.new(transicion_estado_compra_params)
    @transicion_estado_compra.save
    respond_with(@transicion_estado_compra)
  end

  def update
    @transicion_estado_compra.update(transicion_estado_compra_params)
    respond_with(@transicion_estado_compra)
  end

  def destroy
    @transicion_estado_compra.destroy
    respond_with(@transicion_estado_compra)
  end

  private
    def set_transicion_estado_compra
      @transicion_estado_compra = TransicionEstadoCompra.find(params[:id])
    end

    def transicion_estado_compra_params
      params.require(:transicion_estado_compra).permit(:ID_ESTADO_COMPRA_DESDE, :ID_ESTADO_COMPRA_HASTA)
    end
end
