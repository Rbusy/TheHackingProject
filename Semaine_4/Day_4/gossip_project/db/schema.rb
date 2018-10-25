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

ActiveRecord::Schema.define(version: 2018_10_25_211442) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.string "postal_code"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_cities_on_user_id"
  end

  create_table "gossips", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "date"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_gossips_on_user_id"
  end

  create_table "gossips_tags", id: false, force: :cascade do |t|
    t.integer "gossip_id", null: false
    t.integer "tag_id", null: false
    t.index ["gossip_id", "tag_id"], name: "index_gossips_tags_on_gossip_id_and_tag_id"
    t.index ["tag_id", "gossip_id"], name: "index_gossips_tags_on_tag_id_and_gossip_id"
  end

  create_table "privatemessages", force: :cascade do |t|
    t.text "content"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "privatemessages_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "privatemessage_id", null: false
    t.index ["privatemessage_id", "user_id"], name: "index_privatemessages_users_on_privatemessage_id_and_user_id"
    t.index ["user_id", "privatemessage_id"], name: "index_privatemessages_users_on_user_id_and_privatemessage_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "description"
    t.string "email"
    t.string "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
