class InsumoLocalController < ApplicationController
  before_action :set_insumo_local, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @insumo_local = InsumoLocal.all
    respond_with(@insumo_local)
  end

  def show
    respond_with(@insumo_local)
  end

  def new
    @insumo_local = InsumoLocal.new
    respond_with(@insumo_local)
  end

  def edit
  end

  def create
    @insumo_local = InsumoLocal.new(insumo_local_params)
    @insumo_local.save
    respond_with(@insumo_local)
  end

  def update
    @insumo_local.update(insumo_local_params)
    respond_with(@insumo_local)
  end

  def destroy
    @insumo_local.destroy
    respond_with(@insumo_local)
  end

  private
    def set_insumo_local
      @insumo_local = InsumoLocal.find(params[:id])
    end

    def insumo_local_params
      params.require(:insumo_local).permit(:ID_INSUMO, :ID_LOCAL, :STOCK_INSUMO_LOCAL)
    end
end
