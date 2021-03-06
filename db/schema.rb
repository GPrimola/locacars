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

ActiveRecord::Schema.define(version: 20180311210926) do

  create_table "carros", force: :cascade do |t|
    t.integer "patio_id"
    t.string "fabricante"
    t.string "nome"
    t.string "modelo"
    t.integer "ano"
    t.integer "anoModelo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patio_id"], name: "index_carros_on_patio_id"
  end

  create_table "manutencoes", force: :cascade do |t|
    t.integer "carro_id"
    t.date "data"
    t.string "mecanico"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carro_id"], name: "index_manutencoes_on_carro_id"
  end

  create_table "patios", force: :cascade do |t|
    t.integer "unidade_id"
    t.string "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["unidade_id"], name: "index_patios_on_unidade_id"
  end

  create_table "unidades", force: :cascade do |t|
    t.string "nome"
    t.float "lat"
    t.float "long"
    t.integer "totalCarros"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
