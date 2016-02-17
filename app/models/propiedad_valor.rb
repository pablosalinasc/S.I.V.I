require 'composite_primary_keys'
class PropiedadValor < ActiveRecord::Base
	self.primary_keys = :ID_INSUMO, :ID_PROPIEDAD
end
