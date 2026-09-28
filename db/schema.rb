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

ActiveRecord::Schema[8.1].define(version: 2026_09_28_100936) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "workflow_runs", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "error_message"
    t.string "finished_at"
    t.jsonb "input_payload"
    t.jsonb "output_context"
    t.string "started_at"
    t.string "status"
    t.datetime "updated_at", null: false
    t.bigint "workflow_id", null: false
    t.index ["workflow_id"], name: "index_workflow_runs_on_workflow_id"
  end

  create_table "workflows", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.jsonb "defination_jason"
    t.string "enabled"
    t.string "name"
    t.string "trigger_path"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "workflow_runs", "workflows"
end
