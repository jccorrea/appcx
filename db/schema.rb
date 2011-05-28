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

ActiveRecord::Schema.define(:version => 20110517152519) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", :force => true do |t|
    t.string   "name"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.string   "reponsible"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.integer  "supplier_id"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "productions", :force => true do |t|
    t.date     "date"
    t.string   "product_name"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", :force => true do |t|
    t.string   "name"
    t.float    "size"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchases", :force => true do |t|
    t.date     "date"
    t.integer  "supplier_id"
    t.integer  "item_id"
    t.decimal  "item_price"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "quantity"
  end

  create_table "sales", :force => true do |t|
    t.date     "date"
    t.integer  "salesman_id"
    t.integer  "customer_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.float    "unit_price"
    t.float    "total_sale"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "salesmen", :force => true do |t|
    t.string   "name"
    t.date     "age"
    t.string   "email"
    t.string   "phone"
    t.string   "cellphone"
    t.integer  "city_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "suppliers", :force => true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "city"
    t.text     "info"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "firstname"
    t.string   "lastname"
    t.text     "status"
    t.string   "email"
    t.string   "password"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.integer  "is_admin",           :default => 0
    t.integer  "account_active",     :default => 0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
