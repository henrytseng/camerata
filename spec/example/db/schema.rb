ActiveRecord::Schema.define do

  create_table "addresses" do |t|
    t.integer "author_id", null: false
    t.string "street_address"
    t.string "postal_code"
    t.datetime "updated_at", null: false
    t.datetime "created_at", null: false
  end

  create_table "authors" do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at", null: false
  end

  create_table "books" do |t|
    t.string "title", null: false
    t.integer "category_id"
    t.string "description"
    t.datetime "updated_at", null: false
    t.datetime "created_at", null: false
  end

  create_table "books_authors" do |t|
    t.integer "book_id", null: false
    t.integer "author_id", null: false
  end

  create_table "categories" do |t|
    t.string "name", null: false
  end

  create_table "tags" do |t|
    t.integer "entity_id", null: false
    t.string "entity_type", null: false
    t.string "name", null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at", null: false
  end

end
