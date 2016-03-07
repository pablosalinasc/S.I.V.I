class Usuario < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	validates :NOMBRE_USUARIO, presence: true
	has_many :Usuario, :foreign_key => "ID_USUARIO"
	has_many :Usuario, :foreign_key => "ID_USUARIO"
	has_many :Devolucion, :foreign_key => "ID_USUARIO"
	has_many :GuiaLocalBodeguero, :foreign_key => "ID_USUARIO"
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
