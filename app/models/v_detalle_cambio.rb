class VDetalleCambio < ActiveRecord::Base
		self.primary_keys = :ID_DEVOLUCION, :LINEA_CAMBIO
end
