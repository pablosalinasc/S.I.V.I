require 'composite_primary_keys'
class TransicionEstadosDevolucion < ActiveRecord::Base
	self.primary_keys = :ID_ESTADO_DEVOLUCION_DESDE, :ID_ESTADO_DEVOLUCION_HASTA
end
