class Insumo < ActiveRecord::Base
	self.primary_keys = :ID_INSUMO
	has_many :InsumoLocal, :foreign_key => "ID_INSUMO"
	has_many :DetalleVenta, :foreign_key => "ID_INSUMO"
	has_many :DetalleDevolucion, :foreign_key =>  "ID_INSUMO"
	has_many :DetalleCambioInsumo, :foreign_key => "ID_INSUMO"
	has_many :CodigoProveedor, :foreign_key =>  "ID_INSUMO"
	has_many :PropiedadValor, :foreign_key => "ID_INSUMO"
	has_many :Compatibilidad, :foreign_key => "ID_INSUMO"
	belongs_to :TipoInsumo, :foreign_key => "ID_TIPO_INSUMO"
	accepts_nested_attributes_for :PropiedadValor, allow_destroy: true,
		reject_if: :all_blank
	accepts_nested_attributes_for :Compatibilidad, allow_destroy: true
end
