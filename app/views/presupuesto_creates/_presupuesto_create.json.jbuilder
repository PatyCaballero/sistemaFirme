json.extract! presupuesto_create, :id, :fecha, :turno, :cantHora, :cantGuardia, :armamento, :montoMensual, :created_at, :updated_at
json.url presupuesto_create_url(presupuesto_create, format: :json)
