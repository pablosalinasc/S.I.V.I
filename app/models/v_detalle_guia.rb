require 'composite_primary_keys'
class VDetalleGuia < ActiveRecord::Base
	self.primary_keys = :ID_GUIA_DESPACHO, :LINEA_GUIA
end
