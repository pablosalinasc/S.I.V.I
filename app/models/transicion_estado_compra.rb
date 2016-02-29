require 'composite_primary_keys'
class TransicionEstadoCompra < ActiveRecord::Base
	belongs_to :EstadoCompra, :foreign_key => "ID_ESTADO_COMPRA_DESDE"
	belongs_to :EstadoCompra, :foreign_key => "ID_ESTADO_COMPRA_HASTA"
	self.primary_keys = :ID_ESTADO_COMPRA_DESDE, :ID_ESTADO_COMPRA_HASTA
end
