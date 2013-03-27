# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130327175934) do

  create_table "actors", :force => true do |t|
    t.string   "first_name", :limit => 250
    t.string   "last_name",  :limit => 250
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "actors_movies", :force => true do |t|
    t.integer  "actor_id"
    t.integer  "movie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "addresses", :force => true do |t|
    t.string   "address1",   :limit => 250
    t.string   "address2",   :limit => 250
    t.string   "city",       :limit => 250
    t.string   "state",      :limit => 250
    t.string   "zip_code",   :limit => 250
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.text     "author_name"
  end

  create_table "auction_items", :force => true do |t|
    t.string  "description", :limit => 250
    t.float   "price"
    t.boolean "was_sold"
  end

  create_table "authors", :force => true do |t|
    t.string   "username",                            :null => false
    t.string   "email"
    t.boolean  "admin",            :default => false
    t.string   "crypted_password"
    t.string   "salt"
    t.datetime "created_at",                          :null => false
    t.datetime "updated_at",                          :null => false
    t.text     "author_name"
  end

  create_table "awards", :force => true do |t|
    t.integer  "year"
    t.string   "award_name", :limit => 250
    t.integer  "actor_id"
    t.integer  "movie_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bank_accounts", :force => true do |t|
    t.integer "bank_user_id"
    t.string  "account_type",    :limit => 250
    t.float   "current_balance"
  end

  create_table "bank_users", :force => true do |t|
    t.string "first_name", :limit => 250
    t.string "username",   :limit => 250
    t.string "password",   :limit => 250
  end

  create_table "books", :force => true do |t|
    t.string  "isbn",      :limit => 250
    t.string  "title",     :limit => 250
    t.integer "author_id"
  end

  create_table "books_topics", :force => true do |t|
    t.integer "book_id"
    t.integer "topic_id"
  end

  create_table "car_share_members", :force => true do |t|
    t.string  "first_name", :limit => 250
    t.string  "username",   :limit => 250
    t.integer "pin_number"
  end

  create_table "cars", :force => true do |t|
    t.integer "number"
    t.string  "color",               :limit => 250
    t.string  "model",               :limit => 250
    t.integer "car_share_member_id"
  end

  create_table "cats", :force => true do |t|
    t.string   "name",       :limit => 250
    t.string   "location",   :limit => 250
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", :force => true do |t|
    t.string   "author_name"
    t.text     "body"
    t.integer  "article_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "comments", ["article_id"], :name => "index_comments_on_article_id"

  create_table "contact_us_messages", :force => true do |t|
    t.string   "name",       :limit => 250
    t.string   "email",      :limit => 250
    t.string   "message",    :limit => 250
    t.string   "phone",      :limit => 250
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", :force => true do |t|
    t.string   "name",       :limit => 250
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses_students", :force => true do |t|
    t.integer  "student_id"
    t.integer  "course_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "credit_cards", :force => true do |t|
    t.string   "card_type",           :limit => 250
    t.string   "number",              :limit => 250
    t.string   "expiration_month",    :limit => 2
    t.string   "expiration_year",     :limit => 4
    t.string   "verification_number", :limit => 250
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ex0311_credit_cards", :force => true do |t|
    t.integer "user_id"
    t.integer "num"
    t.integer "verification_num"
  end

  create_table "ex0311_items", :force => true do |t|
    t.string "description"
  end

  create_table "ex0311_items_users", :force => true do |t|
    t.integer "ex0311_item_id"
    t.integer "ex0311_user_id"
  end

  create_table "ex0311_users", :force => true do |t|
    t.string "name"
  end

  create_table "ex0318_users", :force => true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fruits", :force => true do |t|
    t.string   "name",           :limit => 250
    t.string   "image_filename", :limit => 250
    t.float    "usd_per_lb"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movies", :force => true do |t|
    t.string   "title",      :limit => 250
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", :force => true do |t|
    t.integer  "ship_address_id"
    t.integer  "bill_address_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.text     "developer_name"
    t.text     "website_name"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "properties", :force => true do |t|
    t.string  "address",         :limit => 250
    t.string  "city",            :limit => 250
    t.string  "state",           :limit => 2
    t.string  "price",           :limit => 12
    t.integer "num_bedrooms"
    t.integer "num_stories"
    t.string  "num_square_feet", :limit => 7
    t.string  "image_url",       :limit => 250
  end

  create_table "property_admins", :force => true do |t|
    t.string "username", :limit => 250
    t.string "password", :limit => 250
  end

  create_table "students", :force => true do |t|
    t.string   "first_name", :limit => 250
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_orders", :force => true do |t|
    t.string   "sandwich_type",     :limit => 250
    t.string   "bread_type",        :limit => 250
    t.boolean  "want_12_inch"
    t.boolean  "want_extra_cheese"
    t.boolean  "want_chips"
    t.string   "total_order",       :limit => 250
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sushi_dishes", :force => true do |t|
    t.string   "name",       :limit => 250
    t.string   "price",      :limit => 250
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sushi_order_line_items", :force => true do |t|
    t.integer  "sushi_order_id"
    t.integer  "sushi_dish_id"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sushi_orders", :force => true do |t|
    t.integer  "table_number"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "taggings", :force => true do |t|
    t.integer  "tag_id"
    t.integer  "article_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "taggings", ["article_id"], :name => "index_taggings_on_article_id"
  add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"

  create_table "tags", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "topics", :force => true do |t|
    t.string "topic", :limit => 250
  end

  create_table "us_states", :force => true do |t|
    t.string   "name",         :limit => 250
    t.string   "abbreviation", :limit => 250
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username",   :limit => 250
    t.string   "password",   :limit => 250
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
