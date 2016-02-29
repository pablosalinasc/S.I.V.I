class Devolucion < ActiveRecord::Base
	belongs_to :Venta, :foreign_key => "ID_VENTA"
	belongs_to :Vendedor, :foreign_key => "ID_VENDEDOR"
	belongs_to :Local, :foreign_key => "ID_LOCAL"
	belongs_to :EstadoDevolucion, :foreign_key => "ID_ESTADO_DEVOLUCION"
	has_many :DetalleDevolucion, :foreign_key => "ID_DEVOLUCION"
	has_many :DetalleCambioInsumo, :foreign_key => "ID_DEVOLUCION"
	accepts_nested_attributes_for :DetalleDevolucion, allow_destroy: true
end
