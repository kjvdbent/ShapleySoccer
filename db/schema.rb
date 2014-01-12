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

ActiveRecord::Schema.define(version: 20140111162542) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "appearances", force: true do |t|
    t.integer "game_id"
    t.integer "player_id"
    t.integer "team_id"
    t.float   "time_on"
    t.float   "time_off"
  end

  create_table "contracts", force: true do |t|
    t.integer "player_id"
    t.integer "seller_id"
    t.integer "team_id"
    t.float   "transfer_amount"
    t.float   "wage"
    t.integer "type"
    t.date    "start_date"
    t.date    "end_date"
  end

  create_table "games", force: true do |t|
    t.integer "home_team_id"
    t.integer "away_team_id"
    t.date    "date"
    t.integer "espn_id"
  end

  create_table "players", force: true do |t|
    t.string  "name"
    t.integer "espn_id"
  end

  create_table "statistic_types", force: true do |t|
    t.string "abbrev"
    t.string "name"
    t.text   "description"
  end

  create_table "statistics", force: true do |t|
    t.float   "value"
    t.integer "appearance_id"
    t.integer "statistic_type_id"
  end

  create_table "substitutions", force: true do |t|
    t.float   "time"
    t.integer "player_in_id"
    t.integer "player_out_id"
    t.integer "game_id"
    t.integer "team_id"
  end

  create_table "teams", force: true do |t|
    t.string  "name"
    t.integer "espn_id"
  end

end