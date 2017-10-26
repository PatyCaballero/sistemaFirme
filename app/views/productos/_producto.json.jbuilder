json.extract! producto, :id, :nomProducto, :caracteristica, :created_at, :updated_at
json.url producto_url(producto, format: :json)
