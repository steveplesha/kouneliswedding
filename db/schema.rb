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

ActiveRecord::Schema.define(:version => 20140224192750) do

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "firstname1"
    t.string   "firstname2"
    t.string   "lastname1"
    t.string   "lastname2"
    t.integer  "numguests"
    t.integer  "maxguests"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.boolean  "respond"
    t.string   "role"
    t.string   "ceremony"
    t.string   "reception"
    t.string   "comment"
    t.string   "ceremony2"
    t.string   "reception2"
  end

  add_index "users", ["username"], :name => "index_users_on_username", :unique => true

end
