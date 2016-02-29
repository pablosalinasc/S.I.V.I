require 'composite_primary_keys'
class Compatibilidad < ActiveRecord::Base
	belongs_to :Marca
	belongs_to :Insumo
	self.primary_keys = :ID_MARCA, :ID_INSUMO
end
