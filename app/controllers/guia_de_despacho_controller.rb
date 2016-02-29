class GuiaDeDespachoController < ApplicationController
  before_action :set_guia_de_despacho, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @guia_de_despacho = GuiaDeDespacho.all
    if usuario_signed_in?
      if current_usuario.ROL_USUARIO == 'V'
        redirect_to '/restricted_access/index'
      else
        respond_with(@guia_de_despacho)
      end
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    respond_with(@guia_de_despacho)
  end

  def new
    @guia_de_despacho = GuiaDeDespacho.new
    @guia_de_despacho.DetalleGuiaDeDespacho.build
    respond_with(@guia_de_despacho)
  end

  def edit
    @guia_de_despacho.DetalleGuiaDeDespacho.build
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
      params.require(:guia_de_despacho).permit(:ID_COMPRA, :ID_PROVEEDOR, :FECHA_SALIDA_GUIA, :FECHA_RECEPCION_GUIA, :TIPO_MOVIMIENTO_GUIA, :VEHICULO_GUIA, :DESTINO_GUIA, :DESPACHO_LOCAL_GUIA, DetalleGuiaDeDespacho_attributes: [:ID_GUIA_DESPACHO,:ID_CODIGO_PROVEEDOR,:LINEA_GUIA, :CANTIDAD_GUIA, :PRECIO_GUIA] )
    end
end
