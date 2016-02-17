require 'composite_primary_keys'
class DetalleCambioInsumo < ActiveRecord::Base
	self.primary_keys = :ID_DEVOLUCION, :LINEA_COTIZACION
end
