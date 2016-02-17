require 'composite_primary_keys'
class DetalleDevolucion < ActiveRecord::Base
	self.primary_keys = :ID_DEVOLUCION, :LINEA_DEVOLUCION
end
