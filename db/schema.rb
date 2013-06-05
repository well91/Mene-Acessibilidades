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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130605222454) do

  create_table "caracteristicas", :force => true do |t|
    t.string   "nome"
    t.integer  "categoria_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "caracteristicas", ["categoria_id"], :name => "index_caracteristicas_on_categoria_id"

  create_table "categorias", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "detalhe_inspecoes", :force => true do |t|
    t.boolean  "aprovada"
    t.integer  "caracteristica_id"
    t.integer  "inspecao_id"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "comentario"
  end

  add_index "detalhe_inspecoes", ["caracteristica_id"], :name => "index_detalhe_inspecoes_on_caracteristica_id"
  add_index "detalhe_inspecoes", ["inspecao_id"], :name => "index_detalhe_inspecoes_on_inspecao_id"

  create_table "gerentes", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "gerentes", ["email"], :name => "index_gerentes_on_email", :unique => true
  add_index "gerentes", ["reset_password_token"], :name => "index_gerentes_on_reset_password_token", :unique => true

  create_table "inspecoes", :force => true do |t|
    t.date     "data"
    t.integer  "status"
    t.integer  "inspetor_id"
    t.integer  "objeto_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "inspecoes", ["inspetor_id"], :name => "index_inspecoes_on_inspetor_id"
  add_index "inspecoes", ["objeto_id"], :name => "index_inspecoes_on_objeto_id"

  create_table "inspetores", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "inspetores", ["email"], :name => "index_inspetores_on_email", :unique => true
  add_index "inspetores", ["reset_password_token"], :name => "index_inspetores_on_reset_password_token", :unique => true

  create_table "locais", :force => true do |t|
    t.string   "nome"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

# Could not dump table "objetos" because of following StandardError
#   Unknown type 'file' for column 'foto'

end
