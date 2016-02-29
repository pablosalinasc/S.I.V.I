class Bodeguero < ActiveRecord::Base
	belongs_to :Usuario, :foreign_key => "ID_BODEGUERO" 
	belongs_to :Local, :foreign_key => "ID_LOCAL" 
end
