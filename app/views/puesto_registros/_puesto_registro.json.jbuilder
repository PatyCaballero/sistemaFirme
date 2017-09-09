json.extract! puesto_registro, :id, :puestoNombre, :direccion, :turno, :horaEntrada, :horaSalida, :created_at, :updated_at
json.url puesto_registro_url(puesto_registro, format: :json)
