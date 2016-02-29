class TipoInsumoController < ApplicationController
  before_action :set_tipo_insumo, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @tipo_insumo = TipoInsumo.all
    if usuario_signed_in?
      if current_usuario.ROL_USUARIO != 'A'
        redirect_to '/restricted_access/index'
      else
        respond_with(@tipo_insumo)
      end
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    @insumo = Insumo.all
    respond_with(@tipo_insumo)
  end

  def new
    @tipo_insumo = TipoInsumo.new
    @tipo_insumo.TipoInsumoPropiedad.build
    respond_with(@tipo_insumo)
  end

  def edit
    @tipo_insumo.TipoInsumoPropiedad.build
  end

  def create
    @tipo_insumo = TipoInsumo.new(tipo_insumo_params)
    @tipo_insumo.save
    respond_with(@tipo_insumo)
  end

  def update
    @tipo_insumo.update(tipo_insumo_params)
    respond_with(@tipo_insumo)
  end

  def destroy
    @tipo_insumo.destroy
    respond_with(@tipo_insumo)
  end

  private
    def set_tipo_insumo
      @tipo_insumo = TipoInsumo.find(params[:id])
    end

    def tipo_insumo_params
      params.require(:tipo_insumo).permit(:NOMBRE_INSUMO, :COMPATIBILIDAD_INSUMO, TipoInsumoPropiedad_attributes: [:ID_TIPO_INSUMO,:PRINCIPAL_PROPIEDAD,:ID_PROPIEDAD ])
    end
end
