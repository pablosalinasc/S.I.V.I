class CodigoProveedorController < ApplicationController
  before_action :set_codigo_proveedor, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @codigo_proveedor = CodigoProveedor.all
    respond_with(@codigo_proveedor)
  end

  def show
    respond_with(@codigo_proveedor)
  end

  def new
    @codigo_proveedor = CodigoProveedor.new
    respond_with(@codigo_proveedor)
  end

  def edit
  end

  def create
    @codigo_proveedor = CodigoProveedor.new(codigo_proveedor_params)
    @codigo_proveedor.save
    redirect_to "/v_codigo_proveedor/"
  end

  def update
    @codigo_proveedor.update(codigo_proveedor_params)
    respond_with(@codigo_proveedor)
  end

  def destroy
    @codigo_proveedor.destroy
    respond_with(@codigo_proveedor)
  end

  private
    def set_codigo_proveedor
      @codigo_proveedor = CodigoProveedor.find(params[:id])
    end

    def codigo_proveedor_params
      params.require(:codigo_proveedor).permit(:ID_CODIGO_PROVEEDOR,:ID_PROVEEDOR, :ID_INSUMO, :CODIGO_INSUMO)
    end
end