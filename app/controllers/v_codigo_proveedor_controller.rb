class VCodigoProveedorController < ApplicationController
  before_action :set_v_codigo_proveedor, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @v_codigo_proveedor = VCodigoProveedor.all
    @codigo_proveedor = CodigoProveedor.all
    if usuario_signed_in?
      if current_usuario.ROL_USUARIO == 'A'
        respond_with(@v_codigo_proveedor,@codigo_proveedor)
      else
        redirect_to '/restricted_access/index'
      end
    else
      redirect_to '/restricted_access/index'
    end
  end

  def show
    respond_with(@v_codigo_proveedor)
  end

  def new
    @v_codigo_proveedor = VCodigoProveedor.new
    respond_with(@v_codigo_proveedor)
  end

  def edit
  end

  def create
    @v_codigo_proveedor = VCodigoProveedor.new(v_codigo_proveedor_params)
    @v_codigo_proveedor.save
    respond_with(@v_codigo_proveedor)
  end

  def update
    @v_codigo_proveedor.update(v_codigo_proveedor_params)
    respond_with(@v_codigo_proveedor)
  end

  def destroy
    @v_codigo_proveedor.destroy
    respond_with(@v_codigo_proveedor)
  end

  private
    def set_v_codigo_proveedor
      @v_codigo_proveedor = VCodigoProveedor.find(params[:id])
      @codigo_proveedor = CodigoProveedor.find(params[:id])
    end

    def v_codigo_proveedor_params
      params.require(:v_codigo_proveedor).permit(:ID_CODIGO_PROVEEDOR, :ID_PROVEEDOR, :ID_INSUMO, :CODIGO_INSUMO, :NOMBRE_PROVEEDOR, :NOMBRE_UNICO_INSUMO)
    end
end
