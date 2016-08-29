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

ActiveRecord::Schema.define(version: 20160829060029) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.integer  "race_id"
    t.integer  "profession_id"
    t.text     "background"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "collections", force: :cascade do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professions", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "hit_dice"
    t.string   "saving_throw"
    t.text     "prof_skills"
    t.integer  "start_hit_points"
    t.string   "start_prof_bonus"
    t.text     "start_features"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "races", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "ability_increases"
    t.string   "age"
    t.string   "alignment"
    t.string   "size"
    t.string   "speed"
    t.string   "languages"
    t.text     "features"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "name"
    t.boolean  "admin",           default: false
    t.text     "password_digest"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
