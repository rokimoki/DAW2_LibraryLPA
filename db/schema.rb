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

ActiveRecord::Schema.define(version: 20180428182650) do

  create_table "book_items", force: :cascade do |t|
    t.string "referenceCode"
    t.integer "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_book_items_on_book_id"
  end

  create_table "book_loans", force: :cascade do |t|
    t.datetime "startDate"
    t.datetime "endDate"
    t.integer "book_item_id"
    t.integer "person_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_item_id"], name: "index_book_loans_on_book_item_id"
    t.index ["person_id"], name: "index_book_loans_on_person_id"
  end

  create_table "books", force: :cascade do |t|
    t.string "isbn"
    t.string "name"
    t.string "author"
    t.string "description"
    t.float "rate"
    t.string "publisher"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books_genres", force: :cascade do |t|
    t.integer "book_id"
    t.integer "genre_id"
    t.index ["book_id"], name: "index_books_genres_on_book_id"
    t.index ["genre_id"], name: "index_books_genres_on_genre_id"
  end

  create_table "chat_rooms", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chat_rooms_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "chat_room_id"
    t.index ["chat_room_id"], name: "index_chat_rooms_users_on_chat_room_id"
    t.index ["user_id"], name: "index_chat_rooms_users_on_user_id"
  end

  create_table "chats", force: :cascade do |t|
    t.integer "creator_id"
    t.integer "receiver_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["creator_id"], name: "index_chats_on_creator_id"
    t.index ["receiver_id"], name: "index_chats_on_receiver_id"
  end

  create_table "comments", force: :cascade do |t|
    t.string "message"
    t.integer "user_id"
    t.integer "book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["book_id"], name: "index_comments_on_book_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "errors", force: :cascade do |t|
    t.string "type"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "geolocations", force: :cascade do |t|
    t.float "latitude"
    t.float "longitude"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_geolocations_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.string "message"
    t.integer "chat_room_id"
    t.integer "chat_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["chat_id"], name: "index_messages_on_chat_id"
    t.index ["chat_room_id"], name: "index_messages_on_chat_room_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "picture"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name"
    t.string "image"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
