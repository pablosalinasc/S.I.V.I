class VentaController < ApplicationController
  before_action :set_venta, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @venta = Venta.all
    if usuario_signed_in?
        respond_with(@v_venta)
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    respond_with(@venta)
  end

  def new
    @venta = Venta.new
    @venta.DetalleVenta.build
    respond_with(@venta)
  end

  def edit
    @venta.DetalleVenta.build
  end

  def create
    @venta = Venta.new(venta_params)
    @venta.save
    redirect_to v_venta_index_path
  end

  def update
    @venta.update(venta_params)
    redirect_to v_venta_index_path
  end

  def destroy
    @venta.destroy
    respond_with(@venta)
  end

  private
    def set_venta
      @venta = Venta.find(params[:id])
    end

    def venta_params
      params.require(:venta).permit(:ID_VENDEDOR, :ID_LOCAL, :ID_CLIENTE, :FECHA_VENTA, :FORMA_DE_PAGO_VENTA,
      :DESCUENTO_TOTAL_VENTA, :MONTO_TOTAL_VENTA, :DESPACHADA_VENTA, :ID_BODEGUERO_DESPACHO, :NUMERO_BOLETA_VENTA,
      detalle_venta_attributes: [:ID_VENTA, :LINEA_VENTA, :ID_INSUMO, :CANTIDAD_VENTA, :PRECIO_VENTA, :DESCUENTO_VENTA, :_destroy])
    end
end
