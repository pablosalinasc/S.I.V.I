class VDetalleGuiaController < ApplicationController
  before_action :set_v_detalle_guia, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @v_detalle_guia = VDetalleGuia.all
    respond_with(@v_detalle_guia)
  end

  def show
    respond_with(@v_detalle_guia)
  end

  def new
    @v_detalle_guia = VDetalleGuia.new
    respond_with(@v_detalle_guia)
  end

  def edit
  end

  def create
    @v_detalle_guia = VDetalleGuia.new(v_detalle_guia_params)
    @v_detalle_guia.save
    respond_with(@v_detalle_guia)
  end

  def update
    @v_detalle_guia.update(v_detalle_guia_params)
    respond_with(@v_detalle_guia)
  end

  def destroy
    @v_detalle_guia.destroy
    respond_with(@v_detalle_guia)
  end

  private
    def set_v_detalle_guia
      @v_detalle_guia = VDetalleGuia.find(params[:id])
    end

    def v_detalle_guia_params
      params.require(:v_detalle_guia).permit(:ID_GUIA_DESPACHO, :LINEA_GUIA, :ID_PROVEEDOR, :ID_INSUMO, :CODIGO_INSUMO, :CANTIDAD_GUIA, :PRECIO_GUIA, :NOMBRE_UNICO_INSUMO)
    end
end
