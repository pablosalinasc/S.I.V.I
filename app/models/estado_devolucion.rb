class EstadoDevolucion < ActiveRecord::Base
	has_many :Devolucion, :foreign_key => "ID_ESTADO_DEVOLUCION"
	has_many :TransicionEstadoDevolucion, :foreign_key => "ID_ESTADO_DEVOLUCION"
	has_many :TransicionEstadoDevolucion, :foreign_key => "ID_ESTADO_DEVOLUCION"
end
