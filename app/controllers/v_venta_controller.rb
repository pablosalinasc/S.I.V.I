class VVentaController < ApplicationController
  before_action :set_v_venta, only: [:show, :edit, :update, :destroy]

  include Devise::Controllers::Helpers

  respond_to :html

  def index
    if current_usuario.ROL_USUARIO == 'B'
      @bodeguero = Bodeguero.find_by ID_BODEGUERO: current_usuario.ID_USUARIO
    end
    @v_venta = VVenta.all
    @venta = Venta.all
    @user = current_usuario

    if usuario_signed_in?
        respond_with(@v_venta)
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    @ventas = Venta.all
    @v_detalle_venta = VDetalleVenta.all
    @user = current_usuario
    respond_with(@v_venta,@v_detalle_venta)
  end

  def new
    @venta = Venta.new
    @cliente =Cliente.all
    respond_with(@venta,@cliente)
  end

  def edit
  end

  def create
    @venta = Venta.new(venta_params)
    @venta.save
    respond_with(@v_venta)
  end

  def update
    @venta.update(venta_params)
    respond_with(@v_venta)
  end

  private
    def set_v_venta
      @venta = Venta.find(params[:id])
      @v_venta = VVenta.find(params[:id])
    end

    def venta_params
      params.require(:venta).permit(:ID_VENDEDOR, :ID_LOCAL, :ID_CLIENTE, :FECHA_VENTA, :FORMA_DE_PAGO_VENTA,
       :DESCUENTO_TOTAL_VENTA, :MONTO_TOTAL_VENTA, :DESPACHADA_VENTA, :ID_BODEGUERO_DESPACHO, :NUMERO_BOLETA_VENTA,
        detalle_venta_attributes: [:id, :ID_VENTA, :LINEA_VENTA, :ID_INSUMO, :CANTIDAD_VENTA, :PRECIO_VENTA, :DESCUENTO_VENTA, :_destroy])
    end

    def v_detalle_venta_params
      params.require(:v_detalle_venta).permit(:ID_VENTA, :LINEA_VENTA, :ID_INSUMO, :CANTIDAD_VENTA, :PRECIO_VENTA, :DESCUENTO_VENTA)
    end
end
