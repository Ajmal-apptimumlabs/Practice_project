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

ActiveRecord::Schema[7.0].define(version: 2023_09_06_124247) do
  create_table "bugs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.date "deadline"
    t.string "type"
    t.string "status"
    t.integer "project_id", null: false
    t.integer "developer_id", null: false
    t.integer "qa_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["developer_id"], name: "index_bugs_on_developer_id"
    t.index ["project_id"], name: "index_bugs_on_project_id"
    t.index ["qa_id"], name: "index_bugs_on_qa_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "name"
    t.integer "manager_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["manager_id"], name: "index_projects_on_manager_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password"
    t.string "email"
    t.integer "role", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role"], name: "index_users_on_role"
  end

  add_foreign_key "bugs", "developers"
  add_foreign_key "bugs", "projects"
  add_foreign_key "bugs", "qas"
  add_foreign_key "projects", "managers"
end
