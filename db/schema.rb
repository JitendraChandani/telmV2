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

ActiveRecord::Schema.define(:version => 20120705022712) do

  create_table "admission_forms", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "contact_no"
    t.string   "gender"
    t.string   "nationality"
    t.string   "blood_group"
    t.string   "religion"
    t.string   "mother_tongue"
    t.string   "prev_school_name"
    t.text     "prev_school_address"
    t.string   "standard"
    t.integer  "residence_type"
    t.string   "father_name"
    t.string   "occupation"
    t.string   "father_email_address"
    t.string   "mother_name"
    t.text     "permanent_address"
    t.text     "present_address"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
    t.string   "photo_file_name"
    t.string   "photo_content_type"
    t.integer  "photo_file_size"
    t.datetime "photo_updated_at"
    t.integer  "status"
    t.integer  "school_id"
  end

  create_table "configurations", :force => true do |t|
    t.integer  "school_id"
    t.string   "config_key"
    t.string   "config_value"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "menus", :force => true do |t|
    t.string   "Title"
    t.string   "url"
    t.integer  "status"
    t.integer  "parent_menu_id"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "school_id"
    t.integer  "role_id"
    t.string   "description"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "schools", :force => true do |t|
    t.string   "name"
    t.text     "address"
    t.string   "contact_person"
    t.integer  "contact_no"
    t.integer  "no_of_licences"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "email"
    t.integer  "status_id"
  end

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.integer  "role_id"
    t.integer  "school_id"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
