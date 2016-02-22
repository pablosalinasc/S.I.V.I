class VResumenClienteController < ApplicationController
  before_action :set_v_resumen_cliente, only: [:show, :edit, :update, :destroy]
  include Devise::Controllers::Helpers

  respond_to :html 

  def index
    @v_resumen_cliente = VResumenCliente.all
    if current_usuario.ROL_USUARIO == 'B'
      redirect_to '/restricted_access/index'
    else
      respond_with(@v_resumen_cliente)
    end
  end

  def show
    respond_with(@v_resumen_cliente)
  end

  def new
    @v_resumen_cliente = VResumenCliente.new
    respond_with(@v_resumen_cliente)
  end

  def edit
  end

  def create
    @v_resumen_cliente = VResumenCliente.new(v_resumen_cliente_params)
    @v_resumen_cliente.save
    respond_with(@v_resumen_cliente)
  end

  def update
    @v_resumen_cliente.update(v_resumen_cliente_params)
    respond_with(@v_resumen_cliente)
  end

  def destroy
    @v_resumen_cliente.destroy
    respond_with(@v_resumen_cliente)
  end

  private
    def set_v_resumen_cliente
      @v_resumen_cliente = VResumenCliente.find(params[:id])
    end

    def v_resumen_cliente_params
      params.require(:v_resumen_cliente).permit(:ID_CLIENTE, :NOMBRE_CLIENTE, :RUT_CLIENTE, :CORREO_CLIENTE, :TELEFONO_CLIENTE, :EDAD, :DESCUENTO_CLIENTE, :VENTAS, :DEVOLUCIONES)
    end
end
