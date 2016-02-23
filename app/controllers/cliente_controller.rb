class ClienteController < ApplicationController
  before_action :set_cliente, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html

  def index
    @cliente = Cliente.all
    if usuario_signed_in?
      if current_usuario.ROL_USUARIO == 'B'
        redirect_to '/restricted_access/index'
      else
        respond_with(@cliente)
      end
    else redirect_to '/restricted_access/index'
    end 
  end

  def show
    respond_with(@cliente)
  end

  def new
    @cliente = Cliente.new
    respond_with(@cliente)
  end

  def edit
  end

  def create
    @cliente = Cliente.new(cliente_params)
    @cliente.save
    respond_with(@cliente)
  end

  def update
    @cliente.update(cliente_params)
    respond_with(@cliente)
  end

  def destroy
    @cliente.destroy
    respond_with(@cliente)
  end

  private
    def set_cliente
      @cliente = Cliente.find(params[:id])
    end

    def cliente_params
      params.require(:cliente).permit(:NOMBRE_CLIENTE, :RUT_CLIENTE, :CORREO_CLIENTE, :TELEFONO_CLIENTE, :FECHA_NACIMIENTO_CLIENTE, :DESCUENTO_CLIENTE)
    end
end
