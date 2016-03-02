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

ActiveRecord::Schema.define(version: 20160301044818) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "players", primary_key: "player_id", force: :cascade do |t|
    t.string  "name"
    t.string  "year"
    t.string  "age"
    t.integer "g"
    t.integer "pa"
    t.integer "ab"
    t.integer "r"
    t.integer "h"
    t.integer "single"
    t.integer "double"
    t.integer "triple"
    t.integer "hr"
    t.integer "tb"
    t.integer "bb"
    t.integer "ibb"
    t.integer "so"
    t.integer "hbp"
    t.integer "sf"
    t.integer "sh"
    t.integer "rbi"
    t.float   "obi"
    t.integer "dp"
    t.float   "netdp"
    t.integer "sb"
    t.integer "cs"
    t.float   "sbp"
    t.float   "avg"
    t.float   "obp"
    t.float   "slg"
    t.float   "ops"
    t.float   "iso"
    t.integer "bpf"
    t.float   "oppops"
    t.float   "tav"
    t.float   "vorp"
    t.float   "fraa"
    t.float   "bwarp"
    t.float   "extra"
  end

end
