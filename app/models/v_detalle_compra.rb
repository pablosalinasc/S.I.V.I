require 'composite_primary_keys'

class VDetalleCompra < ActiveRecord::Base
		self.primary_keys = :ID_COMPRA, :LINEA_COMPRA
end
