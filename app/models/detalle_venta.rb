require 'composite_primary_keys'
class DetalleVenta < ActiveRecord::Base
	self.primary_keys = :ID_VENTA, :LINEA_VENTA
end
