class VPropiedadValorController < ApplicationController
  before_action :set_v_propiedad_valor, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @v_propiedad_valor = VPropiedadValor.all
    respond_with(@v_propiedad_valor)
  end

  def show
    respond_with(@v_propiedad_valor)
  end

  def new
    @v_propiedad_valor = VPropiedadValor.new
    respond_with(@v_propiedad_valor)
  end

  def edit
  end

  def create
    @v_propiedad_valor = VPropiedadValor.new(v_propiedad_valor_params)
    @v_propiedad_valor.save
    respond_with(@v_propiedad_valor)
  end

  def update
    @v_propiedad_valor.update(v_propiedad_valor_params)
    respond_with(@v_propiedad_valor)
  end

  def destroy
    @v_propiedad_valor.destroy
    respond_with(@v_propiedad_valor)
  end

  private
    def set_v_propiedad_valor
      @v_propiedad_valor = VPropiedadValor.find(params[:id])
    end

    def v_propiedad_valor_params
      params.require(:v_propiedad_valor).permit(:ID_INSUMO, :ID_PROPIEDAD, :NOMBRE_PROPIEDAD, :VALOR)
    end
end
