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

ActiveRecord::Schema.define(version: 20180919071438) do

  create_table "users", force: :cascade do |t|
    t.string "username", limit: 140, default: "", null: false
    t.string "name", limit: 140
    t.string "access_token", limit: 140, default: "", null: false
    t.string "avatar"
    t.string "bio", limit: 200
    t.string "slug"
    t.string "email", default: "", null: false
    t.boolean "admin", default: false
    t.string "password_digest", default: "", null: false
    t.string "reset_digest"
    t.datetime "reset_sent"
    t.string "activation_digest"
    t.boolean "activate", default: false
    t.datetime "activate_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "auth_token", limit: 140, default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.string "password_reset_token"
    t.datetime "password_reset_sent_at"
    t.index ["access_token"], name: "index_users_on_access_token"
    t.index ["email"], name: "index_users_on_email"
    t.index ["slug"], name: "index_users_on_slug"
    t.index ["username"], name: "index_users_on_username"
  end

end
