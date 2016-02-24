require 'composite_primary_keys'
class VPropiedadValor < ActiveRecord::Base
	self.primary_keys = :ID_INSUMO, :ID_PROPIEDAD
end
