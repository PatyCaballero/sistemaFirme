# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

	Guardia.create ([{nombre: 'Hector', apellido: 'Vieyra', numDocumento: 5140289, direccion: 'Monseñor Wissen 1989', telefono: '0975-179065', fechaNacimiento: '12/06/1989', nacionalidad: 'Paraguayo', estadoCivil: 'Divorsiado', edad: 28, grupoSanguineo: 'A negativo', estudios: 'universitario', nombrePadre: 'Orlando Vieyra', nombreMadre: 'Antonia Acosta', direccionAlternativo: 'Chamorro 1240, Barrio Villa Cristina', telUrgencia: '0985-202020', fechaIngreso: '19/02/2018', sueldoInicial: '1.500.000', observacion: 'falta de documentos probatorios' }, {nombre: 'Juan', apellido: 'Lopez', numDocumento: 5140289, direccion: 'Monseñor Wissen 1989', telefono: '0975-179065', fechaNacimiento: '12/06/1989', nacionalidad: 'Paraguayo', estadoCivil: 'Divorsiado', edad: 28, grupoSanguineo: 'A negativo', estudios: 'universitario', nombrePadre: 'Orlando Vieyra', nombreMadre: 'Antonia Acosta', direccionAlternativo: 'Chamorro 1240, Barrio Villa Cristina', telUrgencia: '0985-202020', fechaIngreso: '19/02/2018', sueldoInicial: '1.500.000', observacion: 'falta de documentos probatorios' }, {nombre: 'Pedro', apellido: 'Benitez', numDocumento: 5140289, direccion: 'Monseñor Wissen 1989', telefono: '0975-179065', fechaNacimiento: '12/06/1989', nacionalidad: 'Paraguayo', estadoCivil: 'Divorsiado', edad: 28, grupoSanguineo: 'A negativo', estudios: 'universitario', nombrePadre: 'Orlando Vieyra', nombreMadre: 'Antonia Acosta', direccionAlternativo: 'Chamorro 1240, Barrio Villa Cristina', telUrgencia: '0985-202020', fechaIngreso: '19/02/2018', sueldoInicial: '1.500.000', observacion: 'falta de documentos probatorios' }])
  puts 'Se ha creado Guardia'
	
  Cliente.create ([{nombre:'Patricia Caballero', num_ruc: '5140289-0', telefono: '098582858', direccion: 'Monseñor Wissen 1989', email: 'paty@gmail.com', gerente: 'Patricia', rubro: 'Banco', sucursales: 2, descripcion: 'Muy buen cliente', fechaInicio: '12/05/2015' }, {nombre: 'Antonia Caballero', num_ruc: '5140289-0', telefono: '098582858', direccion: 'Monseñor Wissen 1989', email: 'paty@gmail.com', gerente: 'Patricia', rubro: 'Banco', sucursales: 2, descripcion: 'Muy buen cliente', fechaInicio: '12/05/2015' }, {nombre: 'Ramon Caballero', num_ruc: '5140289-0', telefono: '098582858', direccion: 'Monseñor Wissen 1989', email: 'paty@gmail.com', gerente: 'Patricia', rubro: 'Banco', sucursales: 2, descripcion: 'Muy buen cliente', fechaInicio: '12/05/2015' }])
  puts 'Se ha creado clientes'


  Categoria.create ([{nombre:'Arma'}, {nombre:'Vestuario'}, {nombre:'Comunicación'}])
  puts 'Se ha creado Categoria'
   

  Producto.create ([{nomProducto:'Pistola', caracteristica: 'Automatica Calibre 22', categoria_id: 1, identificador: 'MK035', cantidad: 10, cantidadDisponible: 10 }, {nomProducto:'Chaleco', caracteristica: 'Comun', categoria_id: 2, identificador: 'CH001', cantidad: 10, cantidadDisponible: 10 }, {nomProducto:'Celular', caracteristica: 'Solo llamada', categoria_id: 3, identificador: 'CEL0024', cantidad: 10, cantidadDisponible: 10 }])
  puts 'Se ha creado Producto'


  #Puesto.create ([{direccion:'Tomas Romero Pereira', turno: 'Mañana', hora_entrada: '06:00', hora_salida: '14:00', cliente_id: 1, regis_guardium_id: 1, fechaInicio: '19/02/2018', fechaFin: '19/03/2018', producto_id: 2, cantidad: 1}, {direccion:'25 de Mayo c/ Constitucion', turno: 'Tarde', hora_entrada: '14:00', hora_salida: '21:00', cliente_id: 2, regis_guardium_id: 2, fechaInicio: '19/01/2018', fechaFin: '19/07/2018', producto_id: 1, cantidad: 1}])
  #puts 'Se ha creado Puesto'
