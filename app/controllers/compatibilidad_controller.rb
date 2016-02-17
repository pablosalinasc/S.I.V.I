class CompatibilidadController < ApplicationController
  before_action :set_compatibilidad, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @compatibilidad = Compatibilidad.all
    respond_with(@compatibilidad)
  end

  def show
    respond_with(@compatibilidad)
  end

  def new
    @compatibilidad = Compatibilidad.new
    respond_with(@compatibilidad)
  end

  def edit
  end

  def create
    @compatibilidad = Compatibilidad.new(compatibilidad_params)
    @compatibilidad.save
    respond_with(@compatibilidad)
  end

  def update
    @compatibilidad.update(compatibilidad_params)
    respond_with(@compatibilidad)
  end

  def destroy
    @compatibilidad.destroy
    respond_with(@compatibilidad)
  end

  private
    def set_compatibilidad
      @compatibilidad = Compatibilidad.find(params[:id])
    end

    def compatibilidad_params
      params.require(:compatibilidad).permit(:ID_MARCA, :ID_INSUMO)
    end
end
