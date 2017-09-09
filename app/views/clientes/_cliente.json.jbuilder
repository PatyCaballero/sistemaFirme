json.extract! cliente, :id, :cliente, :numRuc, :direccion, :telefono, :estado, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
