require 'composite_primary_keys'
class DetalleOrdenDeCompra < ActiveRecord::Base
	belongs_to :OrdenDeCompra , :foreign_key => "ID_COMPRA"
	belongs_to :CodigoProveedor, :foreign_key => "ID_CODIGO_PROVEEDOR"
	self.primary_keys = :ID_COMPRA, :LINEA_COMPRA
end
