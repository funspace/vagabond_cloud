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

ActiveRecord::Schema.define(version: 20150107095501) do

  create_table "vagrant_box_version_providers", force: true do |t|
    t.string   "name"
    t.string   "url"
    t.integer  "version_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vagrant_box_version_providers", ["version_id"], name: "index_vagrant_box_version_providers_on_version_id"

  create_table "vagrant_box_versions", force: true do |t|
    t.string   "version"
    t.string   "status"
    t.text     "description_html"
    t.text     "description_markdown"
    t.integer  "box_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "vagrant_box_versions", ["box_id"], name: "index_vagrant_box_versions_on_box_id"

  create_table "vagrant_boxes", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "short_description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
