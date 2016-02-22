class TipoInsumoController < ApplicationController
  before_action :set_tipo_insumo, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @tipo_insumo = TipoInsumo.all
    respond_with(@tipo_insumo)
  end

  def show
    respond_with(@tipo_insumo)
  end

  def new
    @tipo_insumo = TipoInsumo.new
    respond_with(@tipo_insumo)
  end

  def edit
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
      params.require(:tipo_insumo).permit(:NOMBRE_INSUMO, :COMPATIBILIDAD_INSUMO)
    end
end
