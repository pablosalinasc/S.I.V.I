class UsuarioController < ApplicationController
  before_action :set_usuario, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @usuario = Usuario.all
    if usuario_signed_in?
      if current_usuario.ROL_USUARIO != 'A'
        redirect_to '/restricted_access/index'
      else
        respond_with(@usuario)
      end
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    respond_with(@usuario)
  end

  def new
    @usuario = Usuario.new
    respond_with(@usuario)
  end

  def edit
  end

  def create
    @usuario = Usuario.new(usuario_params)
    @usuario.save
    respond_with(@usuario)
  end

  def update
    @usuario.update(usuario_params)
    respond_with(@usuario)
  end

  def destroy
    @usuario.destroy
    respond_with(@usuario)
  end

  private
    def set_usuario
      @usuario = Usuario.find(params[:id])
    end

    def usuario_params
      params.require(:usuario).permit(:NOMBRE_USUARIO, :RUT_USUARIO, :FECHA_NACIMIENTO_USUARIO, :CORREO_USUARIO, :TELEFONO_USUARIO, :ROL_USUARIO)
    end
end
