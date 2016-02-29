class Propiedad < ActiveRecord::Base
	has_many :PropiedadValor
	has_many :TipoInsumoPropiedad
end
