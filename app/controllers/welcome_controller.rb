class WelcomeController < ApplicationController
  include Devise::Controllers::Helpers
  respond_to :html

  def index
  	if current_usuario.ROL_USUARIO == 'V'
	  	@v_resumen_vendedor = VResumenVendedor.find(current_usuario.ID_USUARIO)
	  	respond_with(@v_resumen_vendedor)

	elsif  current_usuario.ROL_USUARIO == 'B'
		@v_resumen_bodeguero = VResumenBodeguero.find(current_usuario.ID_USUARIO)
        respond_with(@v_resumen_bodeguero)
	end
  end
end
