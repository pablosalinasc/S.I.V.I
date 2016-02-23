class BodegueroController < ApplicationController
  before_action :set_bodeguero, only: [:show, :edit, :update, :destroy]
  
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @bodeguero = Bodeguero.all
    if usuario_signed_in?
      if current_usuario.ROL_USUARIO != 'A'
        redirect_to '/restricted_access/index'
      else
        respond_with(@bodeguero)
      end
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    respond_with(@bodeguero)
  end

  def new
    @bodeguero = Bodeguero.new
    respond_with(@bodeguero)
  end

  def edit
  end

  def create
    @bodeguero = Bodeguero.new(bodeguero_params)
    @bodeguero.save
    respond_with(@bodeguero)
  end

  def update
    @bodeguero.update(bodeguero_params)
    respond_with(@bodeguero)
  end

  def destroy
    @bodeguero.destroy
    respond_with(@bodeguero)
  end

  private
    def set_bodeguero
      @bodeguero = Bodeguero.find(params[:id])
    end

    def bodeguero_params
      params.require(:bodeguero).permit(:ID_LOCAL)
    end
end
