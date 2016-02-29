require 'composite_primary_keys'
class DetalleCotizacion < ActiveRecord::Base
	belongs_to :Cotizacion, :foreign_key => "ID_COTIZACION"
	belongs_to :CodigoProveedor, :foreign_key => "ID_CODIGO_PROVEEDOR"
 	validates_uniqueness_of :Cotizacion
	self.primary_keys = :ID_COTIZACION, :LINEA_COTIZACION
end