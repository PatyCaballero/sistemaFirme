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

ActiveRecord::Schema.define(version: 20170909024124) do

  create_table "calendarios", force: :cascade do |t|
    t.string "diasTrabajados"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "clientes", force: :cascade do |t|
    t.string "cliente"
    t.integer "numRuc"
    t.string "direccion"
    t.integer "telefono"
    t.string "estado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guardia", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.integer "numCedula"
    t.string "direccion"
    t.integer "telefono"
    t.date "fechaNacimiento"
    t.date "fechaInicio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guardia_registros", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.integer "numDocumento"
    t.string "direccion"
    t.integer "telefono"
    t.date "fechaNacimiento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lista_calendarios", force: :cascade do |t|
    t.integer "sueldo"
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

  create_table "presupuestos", force: :cascade do |t|
    t.date "fecha"
    t.string "turno"
    t.integer "cantHora"
    t.integer "cantGuardia"
    t.string "armamento"
    t.integer "montoMensual"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "puesto_registros", force: :cascade do |t|
    t.string "puestoNombre"
    t.string "direccion"
    t.string "turno"
    t.time "horaEntrada"
    t.time "horaSalida"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regis_guardia", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.integer "numDocumento"
    t.string "direccion"
    t.integer "telefono"
    t.string "fechaNacimiento"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registro_guardia", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.integer "numCedula"
    t.string "direccion"
    t.integer "telefono"
    t.date "fechaNacimiento"
    t.date "fechaInicio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "registro_puestos", force: :cascade do |t|
    t.string "nombrePuesto"
    t.string "direccion"
    t.string "guardia"
    t.string "turno"
    t.time "horaEntrada"
    t.time "horaSalida"
    t.date "desde"
    t.date "hasta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reportes", force: :cascade do |t|
    t.time "horaEntrada"
    t.time "horaSalida"
    t.string "estado"
    t.string "novedad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
