require 'composite_primary_keys'
class DetalleCotizacion < ActiveRecord::Base
	self.primary_keys = :ID_COTIZACION, :LINEA_COTIZACION
end
