class PropiedadController < ApplicationController
  before_action :set_propiedad, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @propiedad = Propiedad.all
    respond_with(@propiedad)
  end

  def show
    respond_with(@propiedad)
  end

  def new
    @propiedad = Propiedad.new
    respond_with(@propiedad)
  end

  def edit
  end

  def create
    @propiedad = Propiedad.new(propiedad_params)
    @propiedad.save
    respond_with(@propiedad)
  end

  def update
    @propiedad.update(propiedad_params)
    respond_with(@propiedad)
  end

  def destroy
    @propiedad.destroy
    respond_with(@propiedad)
  end

  private
    def set_propiedad
      @propiedad = Propiedad.find(params[:id])
    end

    def propiedad_params
      params.require(:propiedad).permit(:NOMBRE_PROPIEDAD, :EJEMPLO_VALOR_PROPIEDAD)
    end
end
