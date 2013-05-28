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

ActiveRecord::Schema.define(:version => 20130520235930) do

  create_table "cita", :force => true do |t|
    t.integer  "matricula"
    t.string   "tema"
    t.date     "fecha"
    t.string   "estado"
    t.time     "hora_de_inicio"
    t.time     "hora_fin"
    t.string   "resultado"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "contactos", :force => true do |t|
    t.string   "foto"
    t.integer  "matricula"
    t.string   "nombre"
    t.string   "sexo"
    t.string   "edad"
    t.string   "domicilio"
    t.string   "colonia"
    t.string   "ciudad"
    t.date     "fecha_alta"
    t.string   "telefono"
    t.string   "Edo_Civil"
    t.string   "email"
    t.string   "motivo_consulta"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "datos_significativos", :force => true do |t|
    t.integer  "matricula"
    t.string   "cambio_residencia"
    t.string   "accidentes"
    t.string   "muertes"
    t.string   "separacion"
    t.string   "divorcio"
    t.string   "problemas_escolares"
    t.string   "perdida_de_empleo"
    t.string   "enfermedades"
    t.string   "problemas_economicos"
    t.string   "asalto"
    t.string   "secuestro"
    t.string   "carcel"
    t.string   "problemas_genericos"
    t.string   "embarazo"
    t.string   "otros"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "registro_sesions", :force => true do |t|
    t.integer  "numero_sesion"
    t.string   "sesion_anterior"
    t.string   "porque"
    t.string   "objetivo_s"
    t.string   "tecnica_usada"
    t.string   "resultado"
    t.text     "conclusion_paciente"
    t.string   "tarea_asignada"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "registros", :force => true do |t|
    t.integer  "matricula"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "telefono"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sessions", :force => true do |t|
    t.string   "username",         :null => false
    t.string   "email"
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "tratamiento_previos", :force => true do |t|
    t.integer  "matricula"
    t.string   "psicoterapia"
    t.string   "motivo"
    t.string   "medicacion"
    t.string   "internamiento"
    t.string   "otros_servicios"
    t.string   "circunstancias_consultas"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "usuarios", :force => true do |t|
    t.integer  "matricula"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
