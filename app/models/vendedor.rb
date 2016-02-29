class Vendedor < ActiveRecord::Base
	belongs_to :Usuario, :foreign_key => "ID_VENDEDOR" 
	belongs_to :Local, :foreign_key => "ID_LOCAL" 
end
