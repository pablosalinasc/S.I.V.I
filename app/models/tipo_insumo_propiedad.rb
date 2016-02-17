require 'composite_primary_keys'
class TipoInsumoPropiedad < ActiveRecord::Base
	self.primary_keys = :ID_TIPO_INSUMO, :ID_PROPIEDAD
end
