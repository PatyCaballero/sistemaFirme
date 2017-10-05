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

ActiveRecord::Schema.define(version: 20171005125001) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "asignar_puestos", force: :cascade do |t|
    t.integer "asignarId"
    t.string "puesto"
    t.string "direccion"
    t.string "turno"
    t.time "horaEntrada"
    t.time "horaSalida"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "calendarios", force: :cascade do |t|
    t.string "diasTrabajados"
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
  end

  create_table "control_stock", force: :cascade do |t|
    t.date "fecha"
    t.integer "cant_x_puesto"
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

  create_table "puestos", force: :cascade do |t|
    t.string "direccion"
    t.string "turno"
    t.time "hora_entrada"
    t.time "hora_salida"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "cliente_id"
    t.integer "regis_guardium_id"
    t.boolean "estado"
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
    t.boolean "estado"
  end

  create_table "reportes", force: :cascade do |t|
    t.time "horaEntrada"
    t.time "horaSalida"
    t.string "estado"
    t.string "novedad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stock", force: :cascade do |t|
    t.string "producto"
    t.integer "cantidad"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "puestos", "clientes"
  add_foreign_key "puestos", "regis_guardia"
end
