# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160101230456) do

  create_table "drivers", force: :cascade do |t|
    t.string   "nombre"
    t.string   "paterno"
    t.string   "materno"
    t.string   "sindical"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "liquidations", force: :cascade do |t|
    t.string   "camion"
    t.integer  "driver_id"
    t.string   "turno"
    t.string   "efectivo"
    t.string   "gastos"
    t.string   "terreno"
    t.string   "ahorro"
    t.string   "otro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date     "fecha"
  end

  add_index "liquidations", ["driver_id"], name: "index_liquidations_on_driver_id"

  create_table "ruta", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "titulars", force: :cascade do |t|
    t.string   "nombre"
    t.string   "paterno"
    t.string   "materno"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "trucks", force: :cascade do |t|
    t.string   "numero"
    t.integer  "titular_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "trucks", ["titular_id"], name: "index_trucks_on_titular_id"

  create_table "turnos", force: :cascade do |t|
    t.string   "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "nivel"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
