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

ActiveRecord::Schema.define(version: 20140512011809) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "syllables", force: true do |t|
    t.string   "character"
    t.string   "ipa"
    t.string   "soundfile"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "word_structures", force: true do |t|
    t.integer  "word_id"
    t.integer  "syllable_id"
    t.integer  "syllable_position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "word_structures", ["syllable_id"], name: "index_word_structures_on_syllable_id", using: :btree
  add_index "word_structures", ["word_id"], name: "index_word_structures_on_word_id", using: :btree

  create_table "words", force: true do |t|
    t.string   "meaning"
    t.string   "soundfile"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
