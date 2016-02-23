class VCompatibilidadController < ApplicationController
  before_action :set_v_compatibilidad, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @v_compatibilidad = VCompatibilidad.all
    respond_with(@v_compatibilidad)
  end

  def show
    respond_with(@v_compatibilidad)
  end

  def new
    @v_compatibilidad = VCompatibilidad.new
    respond_with(@v_compatibilidad)
  end

  def edit
  end

  def create
    @v_compatibilidad = VCompatibilidad.new(v_compatibilidad_params)
    @v_compatibilidad.save
    respond_with(@v_compatibilidad)
  end

  def update
    @v_compatibilidad.update(v_compatibilidad_params)
    respond_with(@v_compatibilidad)
  end

  def destroy
    @v_compatibilidad.destroy
    respond_with(@v_compatibilidad)
  end

  private
    def set_v_compatibilidad
      @v_compatibilidad = VCompatibilidad.find(params[:id])
    end

    def v_compatibilidad_params
      params.require(:v_compatibilidad).permit(:ID_INSUMO, :ID_MARCA, :NOMBRE_MARCA)
    end
end
