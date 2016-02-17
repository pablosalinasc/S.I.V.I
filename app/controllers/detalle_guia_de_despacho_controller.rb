class DetalleGuiaDeDespachoController < ApplicationController
  before_action :set_detalle_guia_de_despacho, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @detalle_guia_de_despacho = DetalleGuiaDeDespacho.all
    respond_with(@detalle_guia_de_despacho)
  end

  def show
    respond_with(@detalle_guia_de_despacho)
  end

  def new
    @detalle_guia_de_despacho = DetalleGuiaDeDespacho.new
    respond_with(@detalle_guia_de_despacho)
  end

  def edit
  end

  def create
    @detalle_guia_de_despacho = DetalleGuiaDeDespacho.new(detalle_guia_de_despacho_params)
    @detalle_guia_de_despacho.save
    respond_with(@detalle_guia_de_despacho)
  end

  def update
    @detalle_guia_de_despacho.update(detalle_guia_de_despacho_params)
    respond_with(@detalle_guia_de_despacho)
  end

  def destroy
    @detalle_guia_de_despacho.destroy
    respond_with(@detalle_guia_de_despacho)
  end

  private
    def set_detalle_guia_de_despacho
      @detalle_guia_de_despacho = DetalleGuiaDeDespacho.find(params[:id])
    end

    def detalle_guia_de_despacho_params
      params.require(:detalle_guia_de_despacho).permit(:ID_GUIA_DESPACHO, :LINEA_GUIA, :ID_PROVEEDOR, :ID_INSUMO, :CODIGO_INSUMO, :CANTIDAD_GUIA, :PRECIO_GUIA)
    end
end
