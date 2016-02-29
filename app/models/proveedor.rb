class Proveedor < ActiveRecord::Base
	has_many :CodigoProveedor, :foreign_key => "ID_PROVEEDOR"
	has_many :Cotizacion, :foreign_key => "ID_PROVEEDOR"
	has_many :OrdenDeCompra, :foreign_key =>  "ID_PROVEEDOR"
	has_many :GuiaDeDespacho, :foreign_key => "ID_PROVEEDOR"
end
