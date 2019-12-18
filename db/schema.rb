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

ActiveRecord::Schema.define(version: 2019_12_18_120845) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "advantages", force: :cascade do |t|
    t.string "image"
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buys", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ckeditor_assets", force: :cascade do |t|
    t.string "data_file_name", null: false
    t.string "data_content_type"
    t.integer "data_file_size"
    t.string "type", limit: 30
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["type"], name: "index_ckeditor_assets_on_type"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "lesson_id"
    t.text "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cons", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "icon"
  end

  create_table "course_faqs", force: :cascade do |t|
    t.string "title"
    t.text "answer"
    t.integer "course_id"
  end

  create_table "course_whos", force: :cascade do |t|
    t.string "icon"
    t.string "title"
    t.text "description"
    t.integer "course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "color"
    t.integer "language_id"
    t.string "landing_header_title"
    t.text "landing_header_paragraph"
    t.string "landing_about_title"
    t.text "landing_about_paragraph"
    t.string "landing_program_description"
    t.text "price"
  end

  create_table "courses_users", force: :cascade do |t|
    t.integer "user_id"
    t.integer "course_id"
  end

  create_table "faq_categories", force: :cascade do |t|
    t.string "title"
    t.integer "language_id"
  end

  create_table "faqs", force: :cascade do |t|
    t.string "question"
    t.text "answer"
    t.integer "faq_category_id"
  end

  create_table "feedbacks", force: :cascade do |t|
    t.string "first_question"
    t.string "second_question"
    t.string "third_question"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "lesson_id"
  end

  create_table "hometasks", force: :cascade do |t|
    t.integer "user_id"
    t.integer "lesson_id"
    t.string "file"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rate"
    t.text "comment"
  end

  create_table "landing_queries", force: :cascade do |t|
    t.string "name"
    t.string "contact"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "languages", force: :cascade do |t|
    t.string "title"
    t.string "abbr"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "video"
    t.text "content_mini"
    t.text "task"
    t.text "description"
    t.string "materials"
  end

  create_table "multiple_answers", force: :cascade do |t|
    t.integer "multiple_question_id"
    t.text "answer"
    t.boolean "correct"
  end

  create_table "multiple_questions", force: :cascade do |t|
    t.integer "multiple_id"
    t.text "question"
  end

  create_table "multiple_results", force: :cascade do |t|
    t.integer "multiple_id"
    t.integer "user_id"
    t.float "result"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "multiples", force: :cascade do |t|
    t.integer "lesson_id"
    t.string "title"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news", force: :cascade do |t|
    t.string "title"
    t.text "description_short"
    t.text "description"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_dominant_color"
    t.text "content"
    t.integer "language_id"
  end

  create_table "programs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "course_id"
  end

  create_table "socials", force: :cascade do |t|
    t.string "link"
    t.string "label"
    t.string "icon"
  end

  create_table "student_questions", force: :cascade do |t|
    t.integer "lesson_id"
    t.integer "user_id"
    t.text "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "answer"
  end

  create_table "template_modules", force: :cascade do |t|
    t.string "title"
    t.integer "language_id"
    t.string "label"
  end

  create_table "templates", force: :cascade do |t|
    t.string "label"
    t.integer "template_module_id"
    t.text "title"
  end

  create_table "user_choices", force: :cascade do |t|
    t.integer "multiple_question_id"
    t.integer "multiple_answer_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "name_surname", default: "", null: false
    t.string "phone", default: "", null: false
    t.integer "gender", default: 1, null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "birthday"
    t.string "avatar"
    t.boolean "admin"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
