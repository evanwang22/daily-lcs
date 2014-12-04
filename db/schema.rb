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

ActiveRecord::Schema.define(version: 20141204031609) do

  create_table "contests", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "entries", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.integer  "lineup_id"
    t.integer  "contest_id"
  end

  add_index "entries", ["contest_id"], name: "index_entries_on_contest_id"
  add_index "entries", ["lineup_id"], name: "index_entries_on_lineup_id"
  add_index "entries", ["user_id"], name: "index_entries_on_user_id"

  create_table "lineups", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  add_index "lineups", ["user_id"], name: "index_lineups_on_user_id"

  create_table "lineups_players", id: false, force: true do |t|
    t.integer "lineup_id", null: false
    t.integer "player_id", null: false
  end

  create_table "players", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stat_lines", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "player_id"
  end

  add_index "stat_lines", ["player_id"], name: "index_stat_lines_on_player_id"

  create_table "users", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
