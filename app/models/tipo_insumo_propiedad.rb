require 'composite_primary_keys'
class TipoInsumoPropiedad < ActiveRecord::Base
	belongs_to :Propiedad, :foreign_key => "ID_PROPIEDAD"
	belongs_to :TipoInsumo, :foreign_key => "ID_TIPO_INSUMO"
	self.primary_keys = :ID_TIPO_INSUMO, :ID_PROPIEDAD
end
