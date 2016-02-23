class VResumenBodegueroController < ApplicationController
  before_action :set_v_resumen_bodeguero, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @v_resumen_bodeguero = VResumenBodeguero.all
    if usuario_signed_in?
      if current_usuario.ROL_USUARIO == 'V'
        redirect_to '/restricted_access/index'
      else
        respond_with(@log)
      end
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    respond_with(@v_resumen_bodeguero)
  end

  def new
    @v_resumen_bodeguero = VResumenBodeguero.new
    respond_with(@v_resumen_bodeguero)
  end

  def edit
  end

  def create
    @v_resumen_bodeguero = VResumenBodeguero.new(v_resumen_bodeguero_params)
    @v_resumen_bodeguero.save
    respond_with(@v_resumen_bodeguero)
  end

  def update
    @v_resumen_bodeguero.update(v_resumen_bodeguero_params)
    respond_with(@v_resumen_bodeguero)
  end

  def destroy
    @v_resumen_bodeguero.destroy
    respond_with(@v_resumen_bodeguero)
  end

  private
    def set_v_resumen_bodeguero
      @v_resumen_bodeguero = VResumenBodeguero.find(params[:id])
    end

    def v_resumen_bodeguero_params
      params.require(:v_resumen_bodeguero).permit(:ID_USUARIO, :NOMBRE_USUARIO, :RUT_USUARIO, :CORREO_USUARIO, :TELEFONO_USUARIO, :EDAD, :VENTAS, :COMPRAS)
    end
end
