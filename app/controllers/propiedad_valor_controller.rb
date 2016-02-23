class PropiedadValorController < ApplicationController
  before_action :set_propiedad_valor, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @propiedad_valor = PropiedadValor.all
    if usuario_signed_in?
      if current_usuario.ROL_USUARIO != 'A'
        redirect_to '/restricted_access/index'
      else
        respond_with(@propiedad_valor)
      end
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    respond_with(@propiedad_valor)
  end

  def new
    @propiedad_valor = PropiedadValor.new
    respond_with(@propiedad_valor)
  end

  def edit
  end

  def create
    @propiedad_valor = PropiedadValor.new(propiedad_valor_params)
    @propiedad_valor.save
    respond_with(@propiedad_valor)
  end

  def update
    @propiedad_valor.update(propiedad_valor_params)
    respond_with(@propiedad_valor)
  end

  def destroy
    @propiedad_valor.destroy
    respond_with(@propiedad_valor)
  end

  private
    def set_propiedad_valor
      @propiedad_valor = PropiedadValor.find(params[:id])
    end

    def propiedad_valor_params
      params.require(:propiedad_valor).permit(:ID_PROPIEDAD, :ID_INSUMO, :VALOR)
    end
end
