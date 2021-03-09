# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_09_185254) do

  create_table "actors", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.string "img_url"
    t.string "wiki_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "characters", force: :cascade do |t|
    t.string "role"
    t.string "gender"
    t.string "img_url"
    t.string "wiki_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "drama_id", null: false
    t.integer "actor_id", null: false
    t.string "name"
    t.index ["actor_id"], name: "index_characters_on_actor_id"
    t.index ["drama_id"], name: "index_characters_on_drama_id"
  end

  create_table "dramas", force: :cascade do |t|
    t.string "title"
    t.string "img_url"
    t.string "wiki_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "uid"
    t.string "provider"
    t.string "name"
    t.string "email"
    t.string "google_token"
    t.string "google_refresh_token"
  end

  add_foreign_key "characters", "actors"
  add_foreign_key "characters", "dramas"
end
