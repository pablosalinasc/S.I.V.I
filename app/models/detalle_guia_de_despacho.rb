require 'composite_primary_keys'
class DetalleGuiaDeDespacho < ActiveRecord::Base
	belongs_to :CodigoProveedor, :foreign_key => "ID_CODIGO_PROVEEDOR"
	belongs_to :GuiaDeDespacho , :foreign_key => "ID_GUIA_DESPACHO"
	self.primary_keys = :ID_GUIA_DESPACHO, :LINEA_GUIA
end
