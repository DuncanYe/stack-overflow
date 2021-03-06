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

ActiveRecord::Schema.define(version: 20180715231839) do

  create_table "answer_upvotes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "answer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_id"], name: "index_answer_upvotes_on_answer_id"
    t.index ["user_id"], name: "index_answer_upvotes_on_user_id"
  end

  create_table "answers", force: :cascade do |t|
    t.integer "user_id"
    t.integer "question_id"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "answer_upvotes_count", default: 0
    t.index ["question_id"], name: "index_answers_on_question_id"
    t.index ["user_id"], name: "index_answers_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "question_upvotes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["question_id"], name: "index_question_upvotes_on_question_id"
    t.index ["user_id"], name: "index_question_upvotes_on_user_id"
  end

  create_table "questions", force: :cascade do |t|
    t.integer "user_id"
    t.string "title", null: false
    t.text "content", null: false
    t.integer "answers_count", default: 0
    t.integer "favorites_count", default: 0
    t.integer "votes_count", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "question_upvotes_count", default: 0
    t.index ["user_id"], name: "index_questions_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name", default: "", null: false
    t.string "intro", default: ""
    t.string "company", default: ""
    t.string "title", default: ""
    t.string "website", default: ""
    t.string "twitter", default: ""
    t.string "github", default: ""
    t.string "role", default: "normal", null: false
    t.integer "questions_count", default: 0
    t.integer "answers_count", default: 0
    t.string "authentication_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
