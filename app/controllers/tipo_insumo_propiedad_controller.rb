class TipoInsumoPropiedadController < ApplicationController
  before_action :set_tipo_insumo_propiedad, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @tipo_insumo_propiedad = TipoInsumoPropiedad.all
    if usuario_signed_in?
      if current_usuario.ROL_USUARIO != 'A'
        redirect_to '/restricted_access/index'
      else
        respond_with(@tipo_insumo_propiedad)
      end
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    respond_with(@tipo_insumo_propiedad)
  end

  def new
    @tipo_insumo_propiedad = TipoInsumoPropiedad.new
    respond_with(@tipo_insumo_propiedad)
  end

  def edit
  end

  def create
    @tipo_insumo_propiedad = TipoInsumoPropiedad.new(tipo_insumo_propiedad_params)
    @tipo_insumo_propiedad.save
    respond_with(@tipo_insumo_propiedad)
  end

  def update
    @tipo_insumo_propiedad.update(tipo_insumo_propiedad_params)
    respond_with(@tipo_insumo_propiedad)
  end

  def destroy
    @tipo_insumo_propiedad.destroy
    respond_with(@tipo_insumo_propiedad)
  end

  private
    def set_tipo_insumo_propiedad
      @tipo_insumo_propiedad = TipoInsumoPropiedad.find(params[:id])
    end

    def tipo_insumo_propiedad_params
      params.require(:tipo_insumo_propiedad).permit(:ID_PROPIEDAD, :PRINCIPAL_PROPIEDAD, :ID_TIPO_INSUMO)
    end
end
