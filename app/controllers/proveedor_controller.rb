class ProveedorController < ApplicationController
  before_action :set_proveedor, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @proveedor = Proveedor.all
    if usuario_signed_in?
      if current_usuario.ROL_USUARIO != 'A'
        redirect_to '/restricted_access/index'
      else
        respond_with(@proveedor)
      end
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    respond_with(@proveedor)
  end

  def new
    @proveedor = Proveedor.new
    respond_with(@proveedor)
  end

  def edit
  end

  def create
    @proveedor = Proveedor.new(proveedor_params)
    @proveedor.save
    respond_with(@proveedor)
  end

  def update
    @proveedor.update(proveedor_params)
    respond_with(@proveedor)
  end

  def destroy
    @proveedor.destroy
    respond_with(@proveedor)
  end

  private
    def set_proveedor
      @proveedor = Proveedor.find(params[:id])
    end

    def proveedor_params
      params.require(:proveedor).permit(:NOMBRE_PROVEEDOR, :PAIS_PROVEEDOR, :CIUDAD_PROVEEDOR, :DIRECCION_PROVEEDOR, :CORREO_PROVEEDOR)
    end
end
