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

ActiveRecord::Schema.define(:version => 20140129143637) do

  create_table "articles", :force => true do |t|
    t.string   "article_name"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "bigbluebutton_metadata", :force => true do |t|
    t.integer  "owner_id"
    t.string   "owner_type"
    t.string   "name"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "bigbluebutton_playback_formats", :force => true do |t|
    t.integer  "recording_id"
    t.string   "format_type"
    t.string   "url"
    t.integer  "length"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "bigbluebutton_recordings", :force => true do |t|
    t.integer  "server_id"
    t.integer  "room_id"
    t.string   "recordid"
    t.string   "meetingid"
    t.string   "name"
    t.boolean  "published",  :default => false
    t.datetime "start_time"
    t.datetime "end_time"
    t.boolean  "available",  :default => true
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

  add_index "bigbluebutton_recordings", ["recordid"], :name => "index_bigbluebutton_recordings_on_recordid", :unique => true
  add_index "bigbluebutton_recordings", ["room_id"], :name => "index_bigbluebutton_recordings_on_room_id"

  create_table "bigbluebutton_rooms", :force => true do |t|
    t.integer  "server_id"
    t.integer  "owner_id"
    t.string   "owner_type"
    t.string   "meetingid"
    t.string   "name"
    t.string   "attendee_password"
    t.string   "moderator_password"
    t.string   "welcome_msg"
    t.string   "logout_url"
    t.string   "voice_bridge"
    t.string   "dial_number"
    t.integer  "max_participants"
    t.boolean  "private",            :default => false
    t.boolean  "external",           :default => false
    t.string   "param"
    t.boolean  "record",             :default => false
    t.integer  "duration",           :default => 0
    t.datetime "created_at",                            :null => false
    t.datetime "updated_at",                            :null => false
  end

  add_index "bigbluebutton_rooms", ["meetingid"], :name => "index_bigbluebutton_rooms_on_meetingid", :unique => true
  add_index "bigbluebutton_rooms", ["server_id"], :name => "index_bigbluebutton_rooms_on_server_id"
  add_index "bigbluebutton_rooms", ["voice_bridge"], :name => "index_bigbluebutton_rooms_on_voice_bridge", :unique => true

  create_table "bigbluebutton_servers", :force => true do |t|
    t.string   "name"
    t.string   "url"
    t.string   "salt"
    t.string   "version"
    t.string   "param"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "categories_items", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "item_id"
  end

  create_table "comments", :force => true do |t|
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.text     "content"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

  create_table "events", :force => true do |t|
    t.string   "event_name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
