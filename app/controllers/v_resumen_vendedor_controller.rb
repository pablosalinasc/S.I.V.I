class VResumenVendedorController < ApplicationController
  before_action :set_v_resumen_vendedor, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @v_resumen_vendedor = VResumenVendedor.all
    if current_usuario.ROL_USUARIO == 'B'
      redirect_to '/restricted_access/index'
    else
      respond_with(@v_resumen_vendedor)
    end
  end

  def show
    respond_with(@v_resumen_vendedor)
  end

  def new
    @v_resumen_vendedor = VResumenVendedor.new
    respond_with(@v_resumen_vendedor)
  end

  def edit
  end

  def create
    @v_resumen_vendedor = VResumenVendedor.new(v_resumen_vendedor_params)
    @v_resumen_vendedor.save
    respond_with(@v_resumen_vendedor)
  end

  def update
    @v_resumen_vendedor.update(v_resumen_vendedor_params)
    respond_with(@v_resumen_vendedor)
  end

  def destroy
    @v_resumen_vendedor.destroy
    respond_with(@v_resumen_vendedor)
  end

  private
    def set_v_resumen_vendedor
      @v_resumen_vendedor = VResumenVendedor.find(params[:id])
    end

    def v_resumen_vendedor_params
      params.require(:v_resumen_vendedor).permit(:ID_USUARIO, :NOMBRE_USUARIO, :RUT_USUARIO, :CORREO_USUARIO, :TELEFONO_USUARIO, :EDAD, :VENTAS, :DEVOLUCIONES)
    end
end
