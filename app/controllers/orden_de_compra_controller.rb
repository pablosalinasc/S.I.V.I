class OrdenDeCompraController < ApplicationController
  before_action :set_orden_de_compra, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @orden_de_compra = OrdenDeCompra.all
    if current_usuario.ROL_USUARIO != 'A'
      redirect_to '/restricted_access/index'
    else
      respond_with(@orden_de_compra)
    end
  end

  def show
    respond_with(@orden_de_compra)
  end

  def new
    @orden_de_compra = OrdenDeCompra.new
    respond_with(@orden_de_compra)
  end

  def edit
  end

  def create
    @orden_de_compra = OrdenDeCompra.new(orden_de_compra_params)
    @orden_de_compra.save
    respond_with(@orden_de_compra)
  end

  def update
    @orden_de_compra.update(orden_de_compra_params)
    respond_with(@orden_de_compra)
  end

  def destroy
    @orden_de_compra.destroy
    respond_with(@orden_de_compra)
  end

  private
    def set_orden_de_compra
      @orden_de_compra = OrdenDeCompra.find(params[:id])
    end

    def orden_de_compra_params
      params.require(:orden_de_compra).permit(:ID_PROVEEDOR, :ID_COTIZACION, :ID_ESTADO_COMPRA, :FECHA_COMPRA, :MONTO_TOTAL_COMPRA)
    end
end
