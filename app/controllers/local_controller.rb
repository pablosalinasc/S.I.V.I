class LocalController < ApplicationController
  before_action :set_local, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @local = Local.all
    if usuario_signed_in?
      if current_usuario.ROL_USUARIO != 'B'
        redirect_to '/restricted_access/index'
      else
        respond_with(@local)
      end
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    respond_with(@local)
  end

  def new
    @local = Local.new
    respond_with(@local)
  end

  def edit
  end

  def create
    @local = Local.new(local_params)
    @local.save
    respond_with(@local)
  end

  def update
    @local.update(local_params)
    respond_with(@local)
  end

  def destroy
    @local.destroy
    respond_with(@local)
  end

  private
    def set_local
      @local = Local.find(params[:id])
    end

    def local_params
      params.require(:local).permit(:DIRECCION_LOCAL)
    end
end
