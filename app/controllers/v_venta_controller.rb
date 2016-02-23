class VVentaController < ApplicationController
  before_action :set_v_venta, only: [:show, :edit, :update, :destroy]
  before_action :set_detalle_venta, only: [:show, :edit, :update, :destroy]


  respond_to :html

  def index
    @v_venta = VVenta.all
    respond_with(@v_venta)
  end

  def show
    respond_with(@v_venta)
  end

  def new
    @v_venta = VVenta.new
    respond_with(@v_venta)
  end

  def edit
  end

  def create
    @v_venta = VVenta.new(v_venta_params)
    @v_venta.save
    respond_with(@v_venta)
  end

  def update
    @v_venta.update(v_venta_params)
    respond_with(@v_venta)
  end

  def destroy
    @v_venta.destroy
    respond_with(@v_venta)
  end

  private
    def set_v_venta
      @v_venta = VVenta.find(params[:id])
    end

    def v_venta_params
      params.require(:v_venta).permit(:ID_VENDEDOR, :ID_LOCAL, :ID_CLIENTE, :FECHA_VENTA, :FORMA_DE_PAGO_VENTA, :DESCUENTO_TOTAL_VENTA, :MONTO_TOTAL_VENTA,:DESPACHADA_VENTA,:ID_BODEGUERO_DESPACHO,:NUMERO_BOLETA_VENTA )
    end

    def set_detalle_venta
      @detalle_venta = DetalleVenta.find(params[:id])
    end

    def detalle_venta_params
      params.require(:detalle_venta).permit(:ID_VENTA, :LINEA_VENTA, :ID_INSUMO, :CANTIDAD_VENTA, :PRECIO_VENTA, :DESCUENTO_VENTA)
    end
end
