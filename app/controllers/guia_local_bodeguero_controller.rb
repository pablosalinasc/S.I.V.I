class GuiaLocalBodegueroController < ApplicationController
  before_action :set_guia_local_bodeguero, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @guia_local_bodeguero = GuiaLocalBodeguero.all
    respond_with(@guia_local_bodeguero)
  end

  def show
    respond_with(@guia_local_bodeguero)
  end

  def new
    @guia_local_bodeguero = GuiaLocalBodeguero.new
    respond_with(@guia_local_bodeguero)
  end

  def edit
  end

  def create
    @guia_local_bodeguero = GuiaLocalBodeguero.new(guia_local_bodeguero_params)
    @guia_local_bodeguero.save
    respond_with(@guia_local_bodeguero)
  end

  def update
    @guia_local_bodeguero.update(guia_local_bodeguero_params)
    respond_with(@guia_local_bodeguero)
  end

  def destroy
    @guia_local_bodeguero.destroy
    respond_with(@guia_local_bodeguero)
  end

  private
    def set_guia_local_bodeguero
      @guia_local_bodeguero = GuiaLocalBodeguero.find(params[:id])
    end

    def guia_local_bodeguero_params
      params.require(:guia_local_bodeguero).permit(:ID_LOCAL, :ID_BODEGUERO, :ID_GUIA_DESPACHO)
    end
end
