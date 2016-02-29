class Cliente < ActiveRecord::Base
	has_many :Venta, :foreign_key => "ID_CLIENTE"
end
