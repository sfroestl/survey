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

ActiveRecord::Schema.define(:version => 20120709134559) do

  create_table "output_surveys", :force => true do |t|
    t.boolean  "use_collab_tool"
    t.string   "use_one_of_collab_tools"
    t.text     "using_another_collab_tool"
    t.integer  "pleased_with_collab_tool"
    t.string   "using_one_of_tools"
    t.string   "desired_tool"
    t.integer  "rate_onespark"
    t.integer  "private_censure_onespark"
    t.text     "lack_in_own_pm"
    t.string   "age"
    t.integer  "activity"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

end
