json.extract! registro_guardium, :id, :nombre, :apellido, :numCedula, :direccion, :telefono, :fechaNacimiento, :fechaInicio, :created_at, :updated_at
json.url registro_guardium_url(registro_guardium, format: :json)
