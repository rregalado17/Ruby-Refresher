# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_23_021618) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "catefories", force: :cascade do |t|
    t.string "title"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "total_count", default: 0
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "summary"
    t.text "body"
    t.boolean "active", default: true
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "catefory_id"
    t.integer "views", default: 0
    t.index ["catefory_id"], name: "index_posts_on_catefory_id"
  end

  add_foreign_key "posts", "catefories"
end
