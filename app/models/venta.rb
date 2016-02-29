class Venta < ActiveRecord::Base
	has_many :DetalleVenta, :foreign_key => "ID_VENTA"
	has_many :DetalleVenta, :foreign_key => "ID_VENTA"
	belongs_to :Local, :foreign_key => "ID_LOCAL"
	belongs_to :Bodeguero, :foreign_key => "ID_BODEGUERO"
	belongs_to :Vendedor, :foreign_key => "ID_VENDEDOR"
	belongs_to :Cliente, :foreign_key => "ID_CLIENTE"
	self.primary_keys = :ID_VENTA
	accepts_nested_attributes_for :DetalleVenta, allow_destroy: true
end
