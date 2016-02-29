require 'composite_primary_keys'
class InsumoLocal < ActiveRecord::Base
	belongs_to :Insumo
	belongs_to :Local
	self.primary_keys = :ID_INSUMO, :ID_LOCAL
end
