class GuiaDeDespachoController < ApplicationController
  before_action :set_guia_de_despacho, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @guia_de_despacho = GuiaDeDespacho.all
    respond_with(@guia_de_despacho)
  end

  def show
    respond_with(@guia_de_despacho)
  end

  def new
    @guia_de_despacho = GuiaDeDespacho.new
    respond_with(@guia_de_despacho)
  end

  def edit
  end

  def create
    @guia_de_despacho = GuiaDeDespacho.new(guia_de_despacho_params)
    @guia_de_despacho.save
    respond_with(@guia_de_despacho)
  end

  def update
    @guia_de_despacho.update(guia_de_despacho_params)
    respond_with(@guia_de_despacho)
  end

  def destroy
    @guia_de_despacho.destroy
    respond_with(@guia_de_despacho)
  end

  private
    def set_guia_de_despacho
      @guia_de_despacho = GuiaDeDespacho.find(params[:id])
    end

    def guia_de_despacho_params
      params.require(:guia_de_despacho).permit(:ID_COMPRA, :ID_PROVEEDOR, :FECHA_SALIDA_GUIA, :FECHA_RECEPCION_GUIA, :TIPO_MOVIMIENTO_GUIA, :VEHICULO_GUIA, :DESTINO_GUIA, :DESPACHO_LOCAL_GUIA)
    end
end
