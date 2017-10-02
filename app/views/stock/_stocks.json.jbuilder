json.extract! stocks, :id, :producto, :cantidad, :descripcion, :created_at, :updated_at
json.url stocks_url(stocks, format: :json)
