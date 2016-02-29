class Usuario < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	has_many :Vendedor, :foreign_key => "ID_USUARIO" 
	has_many :Bodeguero, :foreign_key => "ID_USUARIO" 
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
