json.extract! cliente, :id, :nombre, :num_ruc, :telefono, :direccion, :estado, :created_at, :updated_at
json.url cliente_url(cliente, format: :json)
