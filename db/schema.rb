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

ActiveRecord::Schema.define(version: 2020_05_12_195620) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "answers", force: :cascade do |t|
    t.integer "given_task_id"
    t.datetime "date_of_answer"
    t.integer "state_of_cheking"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "code_file"
    t.integer "automatic_evaluation"
    t.integer "teacher_evaluation"
    t.string "teacher_comment"
    t.string "student_comment"
  end

  create_table "attendances", force: :cascade do |t|
    t.integer "lesson_id"
    t.integer "student_id"
    t.boolean "is_free"
    t.boolean "is_paid"
    t.boolean "is_visited"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "course_id"
    t.integer "order_in_cource"
    t.index ["course_id"], name: "index_categories_on_course_id"
  end

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "shortname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "given_tasks", force: :cascade do |t|
    t.integer "task_id"
    t.integer "student_id"
    t.datetime "date_of_giving"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "groups_id"
    t.boolean "completed"
    t.index ["groups_id"], name: "index_given_tasks_on_groups_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.datetime "group_started"
    t.datetime "group_closed"
    t.text "schedule"
    t.integer "course_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.boolean "active"
    t.index ["user_id"], name: "index_groups_on_user_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.integer "group_id"
    t.datetime "datetime"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "themes_id"
    t.index ["themes_id"], name: "index_lessons_on_themes_id"
  end

  create_table "pack_of_tasks", force: :cascade do |t|
    t.integer "user_id"
    t.datetime "date_of_creation"
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "parents", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "fathersname"
    t.string "mobile1"
    t.string "mobile2"
    t.integer "parent_type"
  end

  create_table "paybacks", force: :cascade do |t|
    t.integer "student_id"
    t.float "amount"
    t.datetime "date"
    t.string "cause"
    t.boolean "is_cash"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer "student_id"
    t.integer "group_id"
    t.float "amount"
    t.datetime "date"
    t.boolean "is_checked"
    t.boolean "is_set_for_attendances"
    t.integer "discount"
    t.integer "num_of_lessons"
    t.boolean "is_cash"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "student_parents", force: :cascade do |t|
    t.integer "student_id"
    t.integer "parent_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students", force: :cascade do |t|
    t.string "provider", default: "login", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "login"
    t.string "name"
    t.string "fathername"
    t.string "surname"
    t.string "gender"
    t.string "school"
    t.string "grade"
    t.string "grade_in_school"
    t.string "phone_number"
    t.string "vk"
    t.string "adress"
    t.string "region"
    t.datetime "started_academy"
    t.datetime "birthday"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_students_on_confirmation_token", unique: true
    t.index ["email"], name: "index_students_on_email", unique: true
    t.index ["reset_password_token"], name: "index_students_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_students_on_uid_and_provider", unique: true
  end

  create_table "students_in_groups", force: :cascade do |t|
    t.integer "group_id"
    t.integer "student_id"
    t.datetime "started_group"
    t.datetime "left_group"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.boolean "is_auto_check"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "type"
    t.bigint "themes_id"
    t.index ["themes_id"], name: "index_tasks_on_themes_id"
  end

  create_table "tasks_in_packs", force: :cascade do |t|
    t.integer "pack_of_task_id"
    t.integer "task_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "order_in_pack"
  end

  create_table "tests", force: :cascade do |t|
    t.bigint "tasks_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["tasks_id"], name: "index_tests_on_tasks_id"
  end

  create_table "themes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "order_in_theme"
    t.bigint "categories_id"
    t.index ["categories_id"], name: "index_themes_on_categories_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "provider", default: "login", null: false
    t.string "uid", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.boolean "allow_password_change", default: false
    t.datetime "remember_created_at"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "login"
    t.string "name"
    t.string "surname"
    t.string "fathername"
    t.datetime "birthday"
    t.string "phone_number"
    t.string "role"
    t.string "email"
    t.json "tokens"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["uid", "provider"], name: "index_users_on_uid_and_provider", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "answers", "given_tasks"
  add_foreign_key "attendances", "lessons"
  add_foreign_key "attendances", "students"
  add_foreign_key "categories", "courses"
  add_foreign_key "given_tasks", "groups", column: "groups_id"
  add_foreign_key "given_tasks", "students"
  add_foreign_key "given_tasks", "tasks"
  add_foreign_key "groups", "courses"
  add_foreign_key "groups", "users"
  add_foreign_key "lessons", "groups"
  add_foreign_key "lessons", "themes", column: "themes_id"
  add_foreign_key "pack_of_tasks", "users"
  add_foreign_key "paybacks", "students"
  add_foreign_key "payments", "groups"
  add_foreign_key "payments", "students"
  add_foreign_key "student_parents", "parents"
  add_foreign_key "student_parents", "students"
  add_foreign_key "students_in_groups", "groups"
  add_foreign_key "students_in_groups", "students"
  add_foreign_key "tasks", "themes", column: "themes_id"
  add_foreign_key "tasks_in_packs", "pack_of_tasks"
  add_foreign_key "tasks_in_packs", "tasks"
  add_foreign_key "tests", "tasks", column: "tasks_id"
  add_foreign_key "themes", "categories", column: "categories_id"
end
