require 'composite_primary_keys'
class GuiaLocalBodeguero < ActiveRecord::Base
	belongs_to :Local, :foreign_key => "ID_LOCAL"
	belongs_to :Usuario, :foreign_key => "ID_BODEGUERO"
	belongs_to :GuiaDeDespacho,  :foreign_key => "ID_GUIA_DESPACHO"
	self.primary_keys = :ID_GUIA_DESPACHO, :ID_BODEGUERO, :ID_LOCAL
end
