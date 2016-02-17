json.array!(@log) do |log|
  json.extract! log, :id, :ID_USUARIO_LOG, :ID_TUPLA_LOG, :NEW_VALUE_LOG, :OLD_VALUE_LOG, :FECHA_LOG, :NOMBRE_TABLA_LOG
  json.url log_url(log, format: :json)
end
