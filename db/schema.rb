ActiveRecord::Schema[7.0].define(version: 2023_07_23_134539) do
  create_table "days", force: :cascade do |t|
    t.date "mooddate"
    t.integer "moodrating"
    t.text "moodjournal"
    t.string "moodword"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notes", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "day_id"
    t.index ["day_id"], name: "index_notes_on_day_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
