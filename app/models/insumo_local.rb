require 'composite_primary_keys'
class InsumoLocal < ActiveRecord::Base
	self.primary_keys = :ID_INSUMO, :ID_LOCAL
end
