class Marca < ActiveRecord::Base
	has_many :Compatibilidad, :foreign_key => "ID_MARCA"
	validates :NOMBRE_MARCA, :presence => true
end
