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
    respond_with(@insumo)
  end

  def edit
  end

  def create
    @insumo = Insumo.new(insumo_params)
    @insumo.save
    respond_with(@insumo)
  end

  def update
    @insumo.update(insumo_params)
    respond_with(@insumo)
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
      params.require(:insumo).permit(:ID_TIPO_INSUMO, :PRECIO_INSUMO, :NOMBRE_UNICO_INSUMO)
    end
end
