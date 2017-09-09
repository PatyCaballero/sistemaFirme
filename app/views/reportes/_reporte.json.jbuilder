json.extract! reporte, :id, :horaEntrada, :horaSalida, :estado, :novedad, :created_at, :updated_at
json.url reporte_url(reporte, format: :json)
