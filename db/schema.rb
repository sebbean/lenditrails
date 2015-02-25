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

ActiveRecord::Schema.define(version: 20150224232559) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conferences", force: true do |t|
    t.string   "title"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "exhibitors", force: true do |t|
    t.string   "company_name"
    t.string   "logo_img"
    t.string   "conference"
    t.text     "description"
    t.string   "url"
    t.integer  "conference_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "friendly_id_slugs", force: true do |t|
    t.string   "slug",                      null: false
    t.integer  "sluggable_id",              null: false
    t.string   "sluggable_type", limit: 50
    t.string   "scope"
    t.datetime "created_at"
  end

  add_index "friendly_id_slugs", ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true, using: :btree
  add_index "friendly_id_slugs", ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type", using: :btree
  add_index "friendly_id_slugs", ["sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_id", using: :btree
  add_index "friendly_id_slugs", ["sluggable_type"], name: "index_friendly_id_slugs_on_sluggable_type", using: :btree

  create_table "partners", force: true do |t|
    t.string   "company_name"
    t.string   "conference"
    t.string   "partner_type"
    t.string   "url"
    t.text     "description"
    t.integer  "conference_id"
    t.string   "logo_img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: true do |t|
    t.string  "title"
    t.text    "caption"
    t.integer "conference_id"
  end

  create_table "podcasts", force: true do |t|
    t.text    "audio_embed"
    t.integer "video_id"
    t.integer "conference_id"
  end

  create_table "speakers", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "suffix"
    t.string   "company_name"
    t.string   "title"
    t.text     "bio"
    t.string   "img_url"
    t.string   "twitter"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "conference"
    t.integer  "conference_id"
    t.boolean  "featured"
  end

  create_table "sponsors", force: true do |t|
    t.string   "company_name"
    t.string   "logo_img"
    t.text     "description"
    t.string   "site_url"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "conference"
    t.string   "sponsor_level"
    t.string   "url"
    t.integer  "conference_id"
  end

  create_table "startups", force: true do |t|
    t.string   "company_name"
    t.string   "logo_img"
    t.string   "conference"
    t.text     "description"
    t.string   "url"
    t.integer  "conference_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "slug"
    t.integer  "conference_id"
    t.text     "embed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "img"
  end

  add_index "videos", ["slug"], name: "index_videos_on_slug", unique: true, using: :btree

end
