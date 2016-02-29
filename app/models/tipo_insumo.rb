class TipoInsumo < ActiveRecord::Base
	has_many :TipoInsumoPropiedad, :foreign_key => "ID_TIPO_INSUMO"
	has_many :Insumo, :foreign_key => "ID_TIPO_INSUMO"
	accepts_nested_attributes_for :TipoInsumoPropiedad, allow_destroy: true,
		reject_if: :all_blank
end
