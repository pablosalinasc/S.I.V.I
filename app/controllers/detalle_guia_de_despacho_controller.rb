class DetalleGuiaDeDespachoController < ApplicationController
  before_action :set_detalle_guia_de_despacho, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @detalle_guia_de_despacho = DetalleGuiaDeDespacho.all
    if usuario_signed_in?
      if current_usuario.ROL_USUARIO == 'V'
        redirect_to '/restricted_access/index'
      else
        respond_with(@detalle_guia_de_despacho)
      end
    else redirect_to '/restricted_access/index'
    end
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
