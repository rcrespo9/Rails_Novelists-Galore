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

ActiveRecord::Schema.define(:version => 20130919000152) do

  create_table "novelists", :force => true do |t|
    t.string   "name",        :limit => 120
    t.string   "gender",      :limit => 7
    t.string   "born",        :limit => 25
    t.string   "died",        :limit => 25
    t.string   "nationality", :limit => 50
    t.datetime "created_at",                 :null => false
    t.datetime "updated_at",                 :null => false
  end

  create_table "novels", :force => true do |t|
    t.string   "title",          :limit => 250
    t.integer  "year_published"
    t.string   "genre",          :limit => 200
    t.integer  "novelist_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  create_table "specs", :force => true do |t|
    t.string   "novelist"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
