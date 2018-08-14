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

ActiveRecord::Schema.define(version: 2018_08_14_154330) do

  create_table "estudiantes", force: :cascade do |t|
    t.string "nombre"
    t.string "documento"
    t.string "direccion"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lugars", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "materiaxes", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profesors", force: :cascade do |t|
    t.string "nombre"
    t.string "documento"
    t.string "direccion"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tutoriaxes", force: :cascade do |t|
    t.string "nombre"
    t.string "modalidad"
    t.string "descripcion"
    t.integer "estudiante_id"
    t.integer "profesor_id"
    t.integer "materiax_id"
    t.integer "lugar_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["estudiante_id"], name: "index_tutoriaxes_on_estudiante_id"
    t.index ["lugar_id"], name: "index_tutoriaxes_on_lugar_id"
    t.index ["materiax_id"], name: "index_tutoriaxes_on_materiax_id"
    t.index ["profesor_id"], name: "index_tutoriaxes_on_profesor_id"
  end

end
