class CompraInsumosController < ApplicationController
  def index
    if usuario_signed_in?
      if current_usuario.ROL_USUARIO != 'A'
        redirect_to '/restricted_access/index'
      end
    else redirect_to '/restricted_access/index'
    end 
  end
end
