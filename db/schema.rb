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

ActiveRecord::Schema.define(version: 3) do

  create_table "questions_answers", force: :cascade do |t|
    t.string "category"
    t.string "q_type"
    t.string "difficulty"
    t.string "question"
    t.string "correct_answer"
    t.string "incorrect_answer_1"
    t.string "incorrect_answer_2"
    t.string "incorrect_answer_3"
  end

  create_table "rounds", force: :cascade do |t|
    t.integer "user_id"
    t.integer "question_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "home_city"
    t.string "home_state"
    t.string "email_address"
    t.string "age"
    t.string "favorite_category"
    t.string "favorite_difficulty"
    t.string "motto"
    t.integer "total_score"
    t.integer "rank"
    t.datetime "last_played"
    t.integer "total_number_of_rounds_played"
  end

end
