require 'composite_primary_keys'
class GuiaLocalBodeguero < ActiveRecord::Base
	self.primary_keys = :ID_GUIA_DESPACHO, :ID_BODEGUERO, :ID_LOCAL
end
