class VProveedorController < ApplicationController
  before_action :set_v_proveedor, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @v_proveedor = VProveedor.all
    if current_usuario.ROL_USUARIO != 'A'
      redirect_to '/restricted_access/index'
    else
      respond_with(@v_proveedor)
    end
  end

  def show
    respond_with(@v_proveedor)
  end

  def new
    @v_proveedor = VProveedor.new
    respond_with(@v_proveedor)
  end

  def edit
  end

  def create
    @v_proveedor = VProveedor.new(v_proveedor_params)
    @v_proveedor.save
    respond_with(@v_proveedor)
  end

  def update
    @v_proveedor.update(v_proveedor_params)
    respond_with(@v_proveedor)
  end

  def destroy
    @v_proveedor.destroy
    respond_with(@v_proveedor)
  end

  private
    def set_v_proveedor
      @v_proveedor = VProveedor.find(params[:id])
    end

    def v_proveedor_params
      params.require(:v_proveedor).permit(:ID_PROVEEDOR, :NOMBRE_PROVEEDOR, :PAIS_PROVEEDOR, :CIUDAD_PROVEEDOR, :DIRECCION_PROVEEDOR, :CORREO_PROVEEDOR, :CANTIDAD_COTIZACIONES, :CANTIDAD_ORDENES_DE_COMPRA)
    end
end
