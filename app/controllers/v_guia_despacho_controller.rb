class VGuiaDespachoController < ApplicationController
  before_action :set_v_guia_despacho, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @v_guia_despacho = VGuiaDespacho.all
    respond_with(@v_guia_despacho)
  end

  def show
    respond_with(@v_guia_despacho)
  end

  def new
    @v_guia_despacho = VGuiaDespacho.new
    respond_with(@v_guia_despacho)
  end

  def edit
  end

  def create
    @v_guia_despacho = VGuiaDespacho.new(v_guia_despacho_params)
    @v_guia_despacho.save
    respond_with(@v_guia_despacho)
  end

  def update
    @v_guia_despacho.update(v_guia_despacho_params)
    respond_with(@v_guia_despacho)
  end

  def destroy
    @v_guia_despacho.destroy
    respond_with(@v_guia_despacho)
  end

  private
    def set_v_guia_despacho
      @v_guia_despacho = VGuiaDespacho.find(params[:id])
    end

    def v_guia_despacho_params
      params.require(:v_guia_despacho).permit(:ID_GUIA_DESPACHO, :ID_COMPRA, :ID_PROVEEDOR, :FECHA_SALIDA_GUIA, :FECHA_RECEPCION_GUIA, :TIPO_MOVIMIENTO_GUIA, :VEHICULO_GUIA, :DESTINO_GUIA, :DESPACHO_LOCAL_GUIA, :NOMBRE_BODEGUERO_ENCARGADO, :NOMBRE_PROVEEDOR, :LOCAL_DESPACHO)
    end
end
