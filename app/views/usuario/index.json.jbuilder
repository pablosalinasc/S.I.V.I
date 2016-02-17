json.array!(@usuario) do |usuario|
  json.extract! usuario, :id, :NOMBRE_USUARIO, :RUT_USUARIO, :FECHA_NACIMIENTO_USUARIO, :CORREO_USUARIO, :TELEFONO_USUARIO, :ROL_USUARIO
  json.url usuario_url(usuario, format: :json)
end
