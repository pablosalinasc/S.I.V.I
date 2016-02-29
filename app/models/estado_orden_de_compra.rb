class EstadoOrdenDeCompra < ActiveRecord::Base
	has_many :OrdenDeCompra, :foreign_key => "ID_ESTADO_COMPRA"
	has_many :TransicionEstadoCompra, :foreign_key => "ID_ESTADO_COMPRA"
	has_many :TransicionEstadoCompra, :foreign_key => "ID_ESTADO_COMPRA"
end
