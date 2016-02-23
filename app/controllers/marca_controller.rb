class MarcaController < ApplicationController
  before_action :set_marca, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @marca = Marca.all
    if usuario_signed_in?    
      if current_usuario.ROL_USUARIO == 'B'
        redirect_to '/restricted_access/index'
      else
        respond_with(@marca)
      end
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    respond_with(@marca)
  end

  def new
    @marca = Marca.new
    respond_with(@marca)
  end

  def edit
  end

  def create
    @marca = Marca.new(marca_params)
    @marca.save
    respond_with(@marca)
  end

  def update
    @marca.update(marca_params)
    respond_with(@marca)
  end

  def destroy
    @marca.destroy
    respond_with(@marca)
  end

  private
    def set_marca
      @marca = Marca.find(params[:id])
    end

    def marca_params
      params.require(:marca).permit(:NOMBRE_MARCA)
    end
end
