# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180303221626) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "calendarios", force: :cascade do |t|
    t.string "diasTrabajados"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categorias", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "nombre"
    t.string "num_ruc"
    t.string "telefono"
    t.string "direccion"
    t.boolean "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.string "gerente"
    t.string "rubro"
    t.string "sucursales"
    t.string "descripcion"
    t.date "fechaInicio"
  end

  create_table "control_stock", force: :cascade do |t|
    t.date "fecha"
    t.integer "cant_x_puesto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guardias", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.integer "numDocumento"
    t.string "direccion"
    t.string "telefono"
    t.date "fechaNacimiento"
    t.string "nacionalidad"
    t.string "estadoCivil"
    t.integer "edad"
    t.string "grupoSanguineo"
    t.string "estudios"
    t.string "nombrePadre"
    t.string "nombreMadre"
    t.string "direccionAlternativo"
    t.string "telUrgencia"
    t.date "fechaIngreso"
    t.string "sueldoInicial"
    t.string "observacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "imprimir_lista", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lista_calendarios", force: :cascade do |t|
    t.integer "sueldo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "listas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "presupuesto_creates", force: :cascade do |t|
    t.string "fecha"
    t.string "turno"
    t.integer "cantHora"
    t.integer "cantGuardia"
    t.string "armamento"
    t.integer "montoMensual"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "presupuestooos", force: :cascade do |t|
    t.date "fecha"
    t.boolean "turno"
    t.integer "cantHora"
    t.integer "cantGuardia"
    t.string "montoMensual"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "turno_id"
  end

  create_table "producto_puestos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "puesto_id"
    t.integer "producto_id"
    t.integer "cantidadAsignada"
  end

  create_table "productos", force: :cascade do |t|
    t.string "nomProducto"
    t.string "caracteristica"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "categoria_id"
    t.string "identificador"
    t.integer "cantidad"
  end

  create_table "puesto_puestos", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "puesto_id"
    t.integer "guardia_id"
  end

  create_table "puestos", force: :cascade do |t|
    t.string "direccion"
    t.string "turno"
    t.time "hora_entrada"
    t.time "hora_salida"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cliente_id"
    t.boolean "estado"
    t.date "fechaInicio"
    t.date "fechaFin"
    t.integer "producto_id"
    t.integer "cantidad"
    t.integer "cantidadDisponible"
    t.integer "guardia_id"
  end

  create_table "reportes", force: :cascade do |t|
    t.string "estado"
    t.string "novedad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "puesto_id"
    t.datetime "horaEntrada"
    t.datetime "horaSalida"
  end

  create_table "stock", force: :cascade do |t|
    t.string "producto"
    t.integer "cantidad"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "stock"
    t.integer "producto_id"
  end

  create_table "turnos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "presupuestooos", "turnos"
  add_foreign_key "producto_puestos", "productos"
  add_foreign_key "producto_puestos", "puestos"
  add_foreign_key "productos", "categorias"
  add_foreign_key "puesto_puestos", "guardias"
  add_foreign_key "puesto_puestos", "puestos"
  add_foreign_key "puestos", "clientes"
  add_foreign_key "puestos", "guardias"
  add_foreign_key "puestos", "productos"
  add_foreign_key "reportes", "puestos"
  add_foreign_key "stock", "productos"
end
