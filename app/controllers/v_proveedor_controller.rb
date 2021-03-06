class VProveedorController < ApplicationController
  before_action :set_v_proveedor, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @proveedor = Proveedor.all
    if usuario_signed_in?
      if current_usuario.ROL_USUARIO != 'A'
        redirect_to '/restricted_access/index'
      else
        respond_with(@v_proveedor)
      end
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    respond_with(@v_proveedor)
  end

  def new
    @proveedor = Proveedor.new
    respond_with(@v_proveedor)
  end

  def edit
  end

  def create
    @proveedor = Proveedor.new(v_proveedor_params)
    @proveedor.save
    respond_with(@proveedor)
  end

  def update
    @proveedor.update(proveedor_params)
    respond_with(@proveedor)
  end

  def destroy
    @v_proveedor.destroy
    respond_with(@proveedor)
  end

  private
    def set_proveedor
      @proveedor = Proveedor.find(params[:id])
    end

    def proveedor_params
      params.require(:proveedor).permit(:ID_PROVEEDOR, :NOMBRE_PROVEEDOR, :PAIS_PROVEEDOR, :CIUDAD_PROVEEDOR, :DIRECCION_PROVEEDOR, :CORREO_PROVEEDOR)
    end
end
