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

ActiveRecord::Schema.define(version: 20140330132340) do

  create_table "actions", force: true do |t|
    t.text     "value",         null: false
    t.integer  "variable_id"
    t.integer  "item_id"
    t.integer  "gateway_id"
    t.integer  "appearance_id"
    t.integer  "dialogue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
  end

  create_table "appearances", force: true do |t|
    t.integer  "character_id", null: false
    t.integer  "scene_id",     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
  end

  create_table "characters", force: true do |t|
    t.string   "name",       null: false
    t.integer  "game_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
  end

  create_table "dialogues", force: true do |t|
    t.text     "question",      null: false
    t.text     "answer",        null: false
    t.integer  "appearance_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
  end

  create_table "games", force: true do |t|
    t.string   "name",           null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
    t.integer  "first_scene_id"
  end

  create_table "gateways", force: true do |t|
    t.integer  "destination_scene_id", null: false
    t.integer  "source_scene_id",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
  end

  create_table "instance_variables", force: true do |t|
    t.integer  "variable_id", null: false
    t.integer  "instance_id", null: false
    t.text     "value",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
  end

  create_table "instances", force: true do |t|
    t.integer  "player_id",  null: false
    t.integer  "game_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
  end

  create_table "items", force: true do |t|
    t.string   "name",       null: false
    t.integer  "scene_id",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
  end

  create_table "ownerships", force: true do |t|
    t.integer  "player_id",  null: false
    t.integer  "game_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
  end

  add_index "ownerships", ["game_id"], name: "index_ownerships_on_game_id"
  add_index "ownerships", ["player_id"], name: "index_ownerships_on_player_id"

  create_table "players", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
  end

  create_table "posessions", force: true do |t|
    t.integer  "item_id",     null: false
    t.integer  "instance_id", null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
  end

  create_table "rules", force: true do |t|
    t.text     "value",         null: false
    t.integer  "variable_id"
    t.integer  "item_id"
    t.integer  "gateway_id"
    t.integer  "appearance_id"
    t.integer  "dialogue_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
  end

  create_table "scenes", force: true do |t|
    t.string   "name",       null: false
    t.integer  "game_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
  end

  create_table "variables", force: true do |t|
    t.string   "name",       null: false
    t.integer  "game_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "token"
  end

  add_index "variables", ["game_id"], name: "index_variables_on_game_id"

end
