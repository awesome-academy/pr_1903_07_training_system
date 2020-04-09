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

ActiveRecord::Schema.define(version: 2020_04_09_113036) do

  create_table "course_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "sourse_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["sourse_id"], name: "index_course_users_on_sourse_id"
    t.index ["user_id"], name: "index_course_users_on_user_id"
  end

  create_table "courses", force: :cascade do |t|
    t.integer "lesson_id"
    t.integer "user_id"
    t.string "course_name"
    t.datetime "start_time"
    t.text "description"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_courses_on_lesson_id"
    t.index ["user_id"], name: "index_courses_on_user_id"
  end

  create_table "exercise_answers", force: :cascade do |t|
    t.string "content"
    t.integer "exercise_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercise_id"], name: "index_exercise_answers_on_exercise_id"
    t.index ["user_id"], name: "index_exercise_answers_on_user_id"
  end

  create_table "exercises", force: :cascade do |t|
    t.string "question"
    t.integer "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_exercises_on_lesson_id"
  end

  create_table "homework_details", force: :cascade do |t|
    t.integer "homework_id"
    t.integer "exercise_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercise_id"], name: "index_homework_details_on_exercise_id"
    t.index ["homework_id"], name: "index_homework_details_on_homework_id"
  end

  create_table "homework_results", force: :cascade do |t|
    t.text "content"
    t.integer "exercise_answer_id"
    t.integer "homeworl_detail_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercise_answer_id"], name: "index_homework_results_on_exercise_answer_id"
    t.index ["homeworl_detail_id"], name: "index_homework_results_on_homeworl_detail_id"
  end

  create_table "homeworks", force: :cascade do |t|
    t.string "name"
    t.integer "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_homeworks_on_lesson_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "user_id"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_lessons_on_course_id"
    t.index ["user_id"], name: "index_lessons_on_user_id"
  end

  create_table "user_lessons", force: :cascade do |t|
    t.integer "user_id"
    t.integer "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_user_lessons_on_lesson_id"
    t.index ["user_id"], name: "index_user_lessons_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
