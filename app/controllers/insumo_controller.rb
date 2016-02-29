class InsumoController < ApplicationController
  before_action :set_insumo, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @insumo = Insumo.all
    if usuario_signed_in?
      if current_usuario.ROL_USUARIO == 'B'
        redirect_to '/restricted_access/index'
      else
        respond_with(@insumo)
      end
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    respond_with(@insumo)
  end

  def new
    @insumo = Insumo.new
    @insumo.PropiedadValor.build
    respond_with(@insumo)
  end

  def edit
  end

  def create
    @insumo = Insumo.new(insumo_params)
    @insumo.save
    redirect_to v_stock_insumo_index_path

  end

  def update
    @insumo.update(insumo_params)
    redirect_to v_stock_insumo_index_path

  end

  def destroy
    @insumo.destroy
    respond_with(@insumo)
  end

  private
    def set_insumo
      @insumo = Insumo.find(params[:id])
    end

    def insumo_params
      params.require(:insumo).permit(:ID_TIPO_INSUMO, :PRECIO_INSUMO, :NOMBRE_UNICO_INSUMO, PropiedadValor_attributes: [:ID_PROPIEDAD, :VALOR])
    end
end
