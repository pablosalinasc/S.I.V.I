require 'composite_primary_keys'
class DetalleVenta < ActiveRecord::Base
	belongs_to :Venta, :foreign_key => "ID_VENTA"
	belongs_to :VVenta, :foreign_key => "ID_VENTA"
	self.primary_keys = :ID_VENTA, :LINEA_VENTA
end
