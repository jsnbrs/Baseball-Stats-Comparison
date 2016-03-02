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

ActiveRecord::Schema.define(version: 20160229184110) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "batters", force: :cascade do |t|
    t.string  "playerid", limit: 9, default: "", null: false
    t.integer "yearid",             default: 0,  null: false
    t.integer "stint",              default: 0,  null: false
    t.string  "teamid",   limit: 3, default: "", null: false
    t.string  "lgid",     limit: 2, default: "", null: false
    t.integer "g"
    t.integer "ab"
    t.integer "r"
    t.integer "h"
    t.integer "double"
    t.integer "triple"
    t.integer "hr"
    t.integer "rbi"
    t.integer "sb"
    t.integer "cs"
    t.integer "bb"
    t.integer "so"
    t.integer "ibb"
    t.integer "hbp"
    t.integer "sh"
    t.integer "sf"
    t.integer "gidp"
  end

  create_table "pitchers", force: :cascade do |t|
    t.string  "playerid", limit: 9,                         default: "", null: false
    t.integer "yearid",                                     default: 0,  null: false
    t.integer "stint",                                      default: 0,  null: false
    t.string  "teamid",   limit: 3,                         default: "", null: false
    t.string  "lgid",     limit: 2,                         default: "", null: false
    t.integer "w"
    t.integer "l"
    t.integer "g"
    t.integer "gs"
    t.integer "cg"
    t.integer "sho"
    t.integer "sv"
    t.integer "ipouts"
    t.integer "h"
    t.integer "er"
    t.integer "hr"
    t.integer "bb"
    t.integer "so"
    t.decimal "baopp",              precision: 5, scale: 3
    t.decimal "era",                precision: 5, scale: 2
    t.integer "ibb"
    t.integer "wp"
    t.integer "hbp"
    t.integer "bk"
    t.integer "bfp"
    t.integer "gf"
    t.integer "r"
    t.integer "sh"
    t.integer "sf"
    t.integer "gidp"
  end

  create_table "players", force: :cascade do |t|
    t.string  "playerid",     limit: 10,                          default: "", null: false
    t.integer "birthyear"
    t.integer "birthmonth"
    t.integer "birthday"
    t.string  "birthcountry", limit: 50
    t.string  "birthstate",   limit: 25
    t.string  "birthcity",    limit: 50
    t.integer "deathyear"
    t.integer "deathmonth"
    t.integer "deathday"
    t.string  "deathcountry", limit: 50
    t.string  "deathstate",   limit: 20
    t.string  "deathcity",    limit: 50
    t.string  "namefirst",    limit: 50
    t.string  "namelast",     limit: 50,                          default: "", null: false
    t.string  "namegiven",    limit: 255
    t.string  "weight",       limit: 3
    t.decimal "height",                   precision: 4, scale: 1
    t.string  "bats",         limit: 1
    t.string  "throws",       limit: 1
    t.date    "debut"
    t.date    "finalgame"
    t.string  "retroid",      limit: 9
    t.string  "bbrefid",      limit: 9
  end

  create_table "teams", force: :cascade do |t|
    t.integer "yearid",                                             default: 0,     null: false
    t.string  "lgid",           limit: 2,                           default: "",    null: false
    t.string  "teamid",         limit: 3,                           default: "",    null: false
    t.string  "franchid",       limit: 3,                           default: "UNK", null: false
    t.string  "divid",          limit: 1
    t.integer "rank",                                               default: 0,     null: false
    t.integer "g"
    t.integer "ghome"
    t.integer "w"
    t.integer "l"
    t.string  "divwin",         limit: 1
    t.string  "wcwin",          limit: 1
    t.string  "lgwin",          limit: 1
    t.string  "wswin",          limit: 1
    t.integer "r"
    t.integer "ab"
    t.integer "h"
    t.integer "double"
    t.integer "triple"
    t.integer "hr"
    t.integer "bb"
    t.integer "so"
    t.integer "sb"
    t.integer "cs"
    t.integer "hbp"
    t.integer "sf"
    t.integer "ra"
    t.integer "er"
    t.decimal "era",                        precision: 4, scale: 2
    t.integer "cg"
    t.integer "sho"
    t.integer "sv"
    t.integer "ipouts"
    t.integer "ha"
    t.integer "hra"
    t.integer "bba"
    t.integer "soa"
    t.integer "e"
    t.integer "dp"
    t.decimal "fp",                         precision: 5, scale: 3
    t.string  "name",           limit: 50,                                          null: false
    t.string  "park",           limit: 255
    t.integer "attendance"
    t.integer "bpf"
    t.integer "ppf"
    t.string  "teamidbr",       limit: 3
    t.string  "teamidlahman45", limit: 3
    t.string  "teamidretro",    limit: 3
  end

end
