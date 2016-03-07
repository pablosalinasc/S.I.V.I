class Local < ActiveRecord::Base
	has_many :GuiaLocalBodeguero, :foreign_key => "ID_LOCAL"
	has_many :Venta, :foreign_key => "ID_LOCAL"
	has_many :Devolucion, :foreign_key => "ID_LOCAL"
	has_many :InsumoLocal, :foreign_key => "ID_LOCAL"
	validates :DIRECCION_LOCAL, :presence => true
end
