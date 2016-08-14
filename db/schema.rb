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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160814200752) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string   "title_fr"
    t.text     "content_fr"
    t.string   "title_en"
    t.text     "content_en"
    t.string   "title_nl"
    t.text     "content_nl"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "artists", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.text     "presentation_fr"
    t.text     "presentation_en"
    t.text     "presentation_nl"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "books", force: :cascade do |t|
    t.string   "title"
    t.string   "author"
    t.text     "content"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "miniature_file_name"
    t.string   "miniature_content_type"
    t.integer  "miniature_file_size"
    t.datetime "miniature_updated_at"
  end

  create_table "dimensions", force: :cascade do |t|
    t.string   "name"
    t.integer  "hauteur"
    t.integer  "largeur"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "gabarit_id"
  end

  create_table "finishes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "formats", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gabarits", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.integer  "visual_id"
    t.integer  "order_id"
    t.decimal  "unit_price"
    t.integer  "quantity"
    t.decimal  "total_price"
    t.integer  "dimension_id"
    t.boolean  "alu"
    t.boolean  "shipping"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "finish_id"
  end

  create_table "order_statuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.decimal  "subtotal"
    t.decimal  "shipping"
    t.decimal  "total"
    t.integer  "order_status_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "user_email"
    t.boolean  "with_shipping"
  end

  create_table "purchases", force: :cascade do |t|
    t.integer  "order_item_id"
    t.integer  "buyer_id"
    t.integer  "visual_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "subscriptions", force: :cascade do |t|
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "uploads", force: :cascade do |t|
    t.boolean  "horizontal"
    t.boolean  "plexi"
    t.integer  "hauteur"
    t.integer  "largeur"
    t.text     "note"
    t.integer  "user_id"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "name"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email_invite"
    t.string   "shipping_street"
    t.string   "shipping_number"
    t.string   "shipping_zipcode"
    t.string   "shipping_city"
    t.string   "shipping_telephone"
    t.string   "billing_street"
    t.string   "billing_number"
    t.string   "billing_zipcode"
    t.string   "billing_city"
    t.string   "billing_telephone"
    t.string   "lead_source"
    t.boolean  "billing_as_shipping"
    t.string   "stripeid"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "visual_formats", force: :cascade do |t|
    t.integer  "visual_id"
    t.integer  "gabarit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visual_gabarits", force: :cascade do |t|
    t.integer  "visual_id"
    t.integer  "gabarit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "visuals", force: :cascade do |t|
    t.string   "name"
    t.integer  "price"
    t.integer  "artist_id"
    t.boolean  "is_drawing"
    t.boolean  "is_picture"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.text     "presentation_fr"
    t.text     "presentation_en"
    t.text     "presentation_nl"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "miniature_file_name"
    t.string   "miniature_content_type"
    t.integer  "miniature_file_size"
    t.datetime "miniature_updated_at"
  end

end
