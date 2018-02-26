json.extract! guardia, :id, :nombre, :apellido, :numDocumento, :direccion, :telefono, :fechaNacimiento, :nacionalidad, :estadoCivil, :edad, :grupoSanguineo, :estudios, :nombrePadre, :nombreMadre, :direccionAlternativo, :telUrgencia, :fechaIngreso, :sueldoInicial, :observacion, :created_at, :updated_at
json.url guardia_url(guardia, format: :json)
