class Cotizacion < ActiveRecord::Base
	has_many :DetalleCotizacion, dependent: :destroy, :foreign_key => "ID_COTIZACION"
	has_many :OrdenDeCompra, :foreign_key => "ID_COTIZACION"
	belongs_to :Proveedor, :foreign_key => "ID_PROVEEDOR"
	accepts_nested_attributes_for :DetalleCotizacion, allow_destroy: true,
		reject_if: :all_blank
end
