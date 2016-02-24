class VDetalleCompraController < ApplicationController
  before_action :set_v_detalle_compra, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @v_detalle_compra = VDetalleCompra.all
    respond_with(@v_detalle_compra)
  end

  def show
    respond_with(@v_detalle_compra)
  end

  def new
    @v_detalle_compra = VDetalleCompra.new
    respond_with(@v_detalle_compra)
  end

  def edit
  end

  def create
    @v_detalle_compra = VDetalleCompra.new(v_detalle_compra_params)
    @v_detalle_compra.save
    respond_with(@v_detalle_compra)
  end

  def update
    @v_detalle_compra.update(v_detalle_compra_params)
    respond_with(@v_detalle_compra)
  end

  def destroy
    @v_detalle_compra.destroy
    respond_with(@v_detalle_compra)
  end

  private
    def set_v_detalle_compra
      @v_detalle_compra = VDetalleCompra.find(params[:id])
    end

    def v_detalle_compra_params
      params.require(:v_detalle_compra).permit(:ID_COMPRA, :LINEA_COMPRA, :ID_PROVEEDOR, :ID_INSUMO, :CODIGO_INSUMO, :CANTIDAD_COMPRA, :PRECIO_COMPRA, :NOMBRE_UNICO_INSUMO)
    end
end
