ActiveRecord::Schema.define(version: 20160111172850) do

  create_table "books", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "genre"
    t.integer  "user_id"
    t.boolean  "availability", default: true
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "trades", force: true do |t|
    t.string   "status",         default: "pending"
    t.integer  "posting_user"
    t.integer  "receiving_user"
    t.integer  "book_id"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "users", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
