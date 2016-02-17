require 'composite_primary_keys'
class DetalleOrdenDeCompra < ActiveRecord::Base
	self.primary_keys = :ID_COMPRA, :LINEA_COMPRA
end
