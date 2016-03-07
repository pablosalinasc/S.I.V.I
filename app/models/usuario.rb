class Usuario < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	has_many :Vendedor, :foreign_key => "ID_USUARIO" 
	has_many :Bodeguero, :foreign_key => "ID_USUARIO" 
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
	accepts_nested_attributes_for :Vendedor, allow_destroy: true,reject_if: :all_blank
	accepts_nested_attributes_for :Bodeguero, allow_destroy: true,reject_if: :all_blank
end
