class VCompatibilidad < ActiveRecord::Base
		self.primary_keys = :ID_INSUMO, :ID_MARCA
end
