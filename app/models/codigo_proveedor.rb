require 'composite_primary_keys'
class CodigoProveedor < ActiveRecord::Base
	self.primary_keys = :ID_PROVEEDOR, :ID_INSUMO, :CODIGO_INSUMO
end
