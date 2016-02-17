require 'composite_primary_keys'
class Compatibilidad < ActiveRecord::Base
	self.primary_keys = :ID_MARCA, :ID_INSUMO
end
