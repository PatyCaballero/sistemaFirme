json.extract! registro_puesto, :id, :nombrePuesto, :direccion, :guardia, :turno, :horaEntrada, :horaSalida, :desde, :hasta, :created_at, :updated_at
json.url registro_puesto_url(registro_puesto, format: :json)
