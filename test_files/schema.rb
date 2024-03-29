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

ActiveRecord::Schema.define(version: 20190909095652) do

  create_table "pages_statics", force: :cascade do |t|
    t.string   "domain",      limit: 255,                   null: false
    t.string   "host_path",   limit: 255,                   null: false
    t.string   "dir_path",    limit: 255
    t.text     "crt",         limit: 65535
    t.text     "key",         limit: 65535
    t.boolean  "force_https",               default: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  add_index "pages_statics", ["domain"], name: "index_pages_statics_on_domain", unique: true, using: :btree

end
