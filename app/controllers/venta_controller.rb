class VentaController < ApplicationController
  before_action :set_venta, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @venta = Venta.all
    respond_with(@venta)
  end

  def show
    respond_with(@venta)
  end

  def new
    @venta = Venta.new
    respond_with(@venta)
  end

  def edit
  end

  def create
    @venta = Venta.new(venta_params)
    @venta.save
    respond_with(@venta)
  end

  def update
    @venta.update(venta_params)
    respond_with(@venta)
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
      params.require(:venta).permit(:ID_VENDEDOR, :ID_LOCAL, :ID_CLIENTE, :FECHA_VENTA, :FORMA_DE_PAGO_VENTA, :DESCUENTO_TOTAL_VENTA, :MONTO_TOTAL_VENTA, :DESPACHADA_VENTA, :ID_BODEGUERO_DESPACHO, :NUMERO_BOLETA_VENTA)
    end
end
