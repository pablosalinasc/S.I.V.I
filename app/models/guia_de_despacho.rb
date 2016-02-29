class GuiaDeDespacho < ActiveRecord::Base
	has_one :GuiaLocalBodeguero,  :foreign_key => "ID_GUIA_DESPACHO"
	has_many :DetalleGuiaDeDespacho, :foreign_key => "ID_GUIA_DESPACHO"
	belongs_to :Proveedor, :foreign_key => "ID_PROVEEDOR"
	belongs_to :OrdenDeCompra, :foreign_key => "ID_COMPRA"
	accepts_nested_attributes_for :DetalleGuiaDeDespacho, allow_destroy: true,
	reject_if: :all_blank
end
