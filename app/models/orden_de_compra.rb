class OrdenDeCompra < ActiveRecord::Base
	has_many :DetalleOrdenDeCompra, dependent: :destroy, :foreign_key => "ID_COMPRA"
	has_many :GuiaDeDespacho, :foreign_key => "ID_COMPRA"
	belongs_to :Cotizacion, :foreign_key => "ID_COTIZACION"
	belongs_to :Proveedor, :foreign_key => "ID_PROVEEDOR"
	belongs_to :EstadoOrdenDeCompra, :foreign_key => "ID_PROVEEDOR"
	accepts_nested_attributes_for :DetalleOrdenDeCompra, allow_destroy: true,
		reject_if: :all_blank
end
