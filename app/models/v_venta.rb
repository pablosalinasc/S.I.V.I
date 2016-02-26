require 'composite_primary_keys'
class VVenta < ActiveRecord::Base
	has_many :DetalleVenta, :foreign_key => "ID_VENTA"
	self.primary_keys = :ID_VENTA
	accepts_nested_attributes_for :DetalleVenta, allow_destroy: true
end
