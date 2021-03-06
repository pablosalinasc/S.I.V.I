class ParametroController < ApplicationController
  before_action :set_parametro, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @parametro = Parametro.all    
    if usuario_signed_in?
      if current_usuario.ROL_USUARIO != 'A'
        redirect_to '/restricted_access/index'
      else
        respond_with(@parametro)
      end
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    respond_with(@parametro)
  end

  def new
    @parametro = Parametro.new
    respond_with(@parametro)
  end

  def edit
  end

  def create
    @parametro = Parametro.new(parametro_params)
    @parametro.save
    respond_with(@parametro)
  end

  def update
    @parametro.update(parametro_params)
    respond_with(@parametro)
  end

  def destroy
    @parametro.destroy
    respond_with(@parametro)
  end

  private
    def set_parametro
      @parametro = Parametro.find(params[:id])
    end

    def parametro_params
      params.require(:parametro).permit(:NOMBRE_PARAMETRO, :VALOR_PARAMETRO)
    end
end
