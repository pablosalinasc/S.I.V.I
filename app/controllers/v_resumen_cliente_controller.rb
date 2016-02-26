class VResumenClienteController < ApplicationController
  before_action :set_v_resumen_cliente, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html 

  def index
    @v_resumen_cliente = VResumenCliente.all
    if usuario_signed_in?
      if current_usuario.ROL_USUARIO == 'B'
        redirect_to '/restricted_access/index'
      else
        respond_with(@v_resumen_cliente)
      end
    else redirect_to '/restricted_access/index'
    end
  end

  def show
    respond_with(@v_resumen_cliente)
  end

  def new
    @cliente = Cliente.new
    respond_with(@v_resumen_cliente)
  end

  def edit
  end

  def create
    @cliente = Cliente.new(cliente_params)
    @cliente.save
    respond_with(@v_resumen_cliente)
  end

  def update
    @v_resumen_cliente.update(cliente_params)
    respond_with(@v_resumen_cliente)
  end

  private
    def set_v_resumen_cliente
      @v_resumen_cliente = VResumenCliente.find(params[:id])
      @cliente = Cliente.find(params[:id])
    end

    def cliente_params
      params.require(:cliente).permit(:NOMBRE_CLIENTE, :RUT_CLIENTE, :CORREO_CLIENTE, :TELEFONO_CLIENTE, :FECHA_NACIMIENTO_CLIENTE, :DESCUENTO_CLIENTE)
    end
end
