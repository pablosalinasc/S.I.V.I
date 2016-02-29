class CodigoProveedor < ActiveRecord::Base
	self.primary_keys = :ID_CODIGO_PROVEEDOR
	has_many :DetalleGuiaDeDespacho, :foreign_key => "ID_CODIGO_PROVEEDOR"
	has_many :DetalleCotizacion, :foreign_key => "ID_CODIGO_PROVEEDOR"
	has_many :DetalleOrdenDeCompra, :foreign_key => "ID_CODIGO_PROVEEDOR"
	belongs_to :Proveedor, :foreign_key => "ID_PROVEEDOR"
	belongs_to :Insumo, :foreign_key => "ID_INSUMO"
end
