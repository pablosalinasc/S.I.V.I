require 'composite_primary_keys'
class TransicionEstadoCompra < ActiveRecord::Base
	self.primary_keys = :ID_ESTADO_COMPRA_DESDE, :ID_ESTADO_COMPRA_HASTA
end
