

ActiveRecord::Schema.define(version: 20150623033721) do

  create_table "answers", force: :cascade do |t|
    t.text     "answer_body"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "question_id"
    t.text     "subject"
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id"
  add_index "answers", ["user_id"], name: "index_answers_on_user_id"

  create_table "question_answers", force: :cascade do |t|
    t.integer  "question_id"
    t.integer  "answer_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  add_index "question_answers", ["answer_id"], name: "index_question_answers_on_answer_id"
  add_index "question_answers", ["question_id"], name: "index_question_answers_on_question_id"

  create_table "questions", force: :cascade do |t|
    t.text     "question"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.string   "subject"
  end

  add_index "questions", ["user_id"], name: "index_questions_on_user_id"

  create_table "quizquestions", force: :cascade do |t|
    t.integer  "question_id"
    t.integer  "quiz_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "quizzes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "quizzes", ["user_id"], name: "index_quizzes_on_user_id"

  create_table "student_answers", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "quizquestion_id"
    t.integer  "question_answer_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "student_answers", ["question_answer_id"], name: "index_student_answers_on_question_answer_id"
  add_index "student_answers", ["quizquestion_id"], name: "index_student_answers_on_quizquestion_id"
  add_index "student_answers", ["student_id"], name: "index_student_answers_on_student_id"

  create_table "student_quizzes", force: :cascade do |t|
    t.integer  "student_id"
    t.integer  "quiz_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "student_quizzes", ["quiz_id"], name: "index_student_quizzes_on_quiz_id"
  add_index "student_quizzes", ["student_id"], name: "index_student_quizzes_on_student_id"

  create_table "students", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
