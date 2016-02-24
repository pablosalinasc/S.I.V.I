class VVentaController < ApplicationController
  before_action :set_v_venta, only: [:show, :edit, :update, :destroy]

  include Devise::Controllers::Helpers

  respond_to :html

  def index
    if current_usuario.ROL_USUARIO == 'B'
      @bodeguero = Bodeguero.find_by ID_BODEGUERO: current_usuario.ID_USUARIO
    end
    @v_venta = VVenta.all
    @user = current_usuario

    if usuario_signed_in?
        respond_with(@v_venta)
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    @v_detalle_venta = VDetalleVenta.all    
    @user = current_usuario
    respond_with(@v_venta,@v_detalle_venta)
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

    def v_detalle_venta_params
      params.require(:v_detalle_venta).permit(:ID_VENTA, :LINEA_VENTA, :NOMBRE_UNICO_INSUMO, :CANTIDAD_VENTA, :PRECIO_VENTA, :DESCUENTO_VENTA)
    end
end
