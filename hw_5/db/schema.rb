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

ActiveRecord::Schema.define(version: 2021_01_03_164234) do

  create_table "authors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.datetime "birthday"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email"
    t.string "password_digest"
    t.string "remember_digest"
    t.index ["email"], name: "index_authors_on_email", unique: true
  end

  create_table "comments", force: :cascade do |t|
    t.text "body"
    t.integer "status", default: 0
    t.integer "author_id"
    t.integer "post_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["post_id", "created_at"], name: "index_comments_on_post_id_and_created_at"
  end

  create_table "posts", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.text "content"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "author_id"
    t.integer "views", default: 0
    t.string "photo_file_name"
    t.string "photo_content_type"
    t.bigint "photo_file_size"
    t.datetime "photo_updated_at"
    t.index ["author_id", "created_at"], name: "index_posts_on_author_id_and_created_at"
  end

end
