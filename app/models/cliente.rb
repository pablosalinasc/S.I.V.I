class Cliente < ActiveRecord::Base
	has_many :Venta, :foreign_key => "ID_CLIENTE"
	validates :NOMBRE_CLIENTE, :FECHA_NACIMIENTO_CLIENTE,:RUT_CLIENTE, :presence => true
end
