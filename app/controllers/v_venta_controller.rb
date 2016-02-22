class VVentaController < ApplicationController
  before_action :set_v_venta, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @v_venta = VVenta.all
    if current_usuario.ROL_USUARIO == 'B'
      redirect_to '/restricted_access/index'
    else
      respond_with(@v_venta)
    end
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
      params.require(:v_venta).permit(:ID_VENTA, :NOMBRE_VENDEDOR, :NOMBRE_CLIENTE, :DIRECCION_LOCAL)
    end
end
