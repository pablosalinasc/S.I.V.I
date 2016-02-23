class VResumenLocalController < ApplicationController
  before_action :set_v_resumen_local, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @v_resumen_local = VResumenLocal.all
    if current_usuario.ROL_USUARIO != 'A'
      redirect_to '/restricted_access/index'
    else
      respond_with(@v_resumen_local)
    end
  end

  def show
    respond_with(@v_resumen_local)
  end

  def new
    @v_resumen_local = VResumenLocal.new
    respond_with(@v_resumen_local)
  end

  def edit
  end

  def create
    @v_resumen_local = VResumenLocal.new(v_resumen_local_params)
    @v_resumen_local.save
    respond_with(@v_resumen_local)
  end

  def update
    @v_resumen_local.update(v_resumen_local_params)
    respond_with(@v_resumen_local)
  end

  def destroy
    @v_resumen_local.destroy
    respond_with(@v_resumen_local)
  end

  private
    def set_v_resumen_local
      @v_resumen_local = VResumenLocal.find(params[:id])
    end

    def v_resumen_local_params
      params.require(:v_resumen_local).permit(:ID_LOCAL, :DIRECCION_LOCAL, :CANTIDAD_VENDEDORES, :CANTIDAD_BODEGUEROS, :VENTAS_ULTIMO_MES, :DEVOLUCIONES_ULTIMO_MES)
    end
end
