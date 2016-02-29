require 'composite_primary_keys'
class DetalleDevolucion < ActiveRecord::Base
	belongs_to :Insumo, :foreign_key => "ID_INSUMO"
	belongs_to :Devolucion, :foreign_key => "ID_DEVOLUCION"
	self.primary_keys = :ID_DEVOLUCION, :LINEA_DEVOLUCION
end
