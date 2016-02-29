require 'composite_primary_keys'
class DetalleVenta < ActiveRecord::Base
	belongs_to :Venta, :foreign_key => "ID_VENTA"
	belongs_to :Insumo, :foreign_key => "ID_INSUMO"
	self.primary_keys = :ID_VENTA, :LINEA_VENTA
end
