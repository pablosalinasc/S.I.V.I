require 'composite_primary_keys'
class TransicionEstadosDevolucion < ActiveRecord::Base
	belongs_to :EstadoDevolucion, :foreign_key => "ID_ESTADO_DEVOLUCION_DESDE"
	belongs_to :EstadoDevolucion, :foreign_key => "ID_ESTADO_DEVOLUCION_HASTA"
	self.primary_keys = :ID_ESTADO_DEVOLUCION_DESDE, :ID_ESTADO_DEVOLUCION_HASTA
end
