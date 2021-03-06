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

ActiveRecord::Schema.define(:version => 20150318010904) do

  create_table "boxes", :force => true do |t|
    t.text    "color"
    t.integer "border_width"
    t.integer "start_x_pos"
    t.integer "start_y_pos"
    t.integer "end_x_pos"
    t.integer "end_y_pos"
    t.integer "canvas_id"
  end

  create_table "canvases", :force => true do |t|
    t.integer  "user_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "name",       :null => false
  end

  create_table "users", :force => true do |t|
    t.text     "name"
    t.text     "password"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.text     "username",   :null => false
  end

end
