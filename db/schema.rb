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

ActiveRecord::Schema.define(:version => 20111228050935) do

  create_table "activities", :force => true do |t|
    t.integer  "manager_id"
    t.text     "description"
    t.date     "date"
    t.string   "url"
    t.integer  "urgency"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ads", :force => true do |t|
    t.string   "url"
    t.date     "expiration_date"
    t.string   "account_name"
    t.text     "description"
    t.integer  "num_responses"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "managers", :force => true do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.string   "lastname"
    t.string   "firstname"
    t.string   "phonenumber"
    t.string   "company_name"
    t.text     "streetaddress"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.string   "website"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", :force => true do |t|
    t.string   "sender"
    t.string   "receiver"
    t.date     "sentdate"
    t.text     "content"
    t.string   "subject"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "properties", :force => true do |t|
    t.integer  "manager_id"
    t.string   "name"
    t.text     "headline"
    t.text     "description"
    t.string   "streetaddress"
    t.string   "zipcode"
    t.string   "city"
    t.string   "state"
    t.string   "country"
    t.float    "longitude"
    t.float    "latitude"
    t.integer  "type"
    t.string   "year_built"
    t.integer  "stories"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "property_assets", :force => true do |t|
    t.integer  "property_id"
    t.integer  "type"
    t.string   "url"
    t.integer  "width"
    t.integer  "height"
    t.integer  "visibility"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "property_units", :force => true do |t|
    t.integer  "property_id"
    t.integer  "size"
    t.integer  "size_measure"
    t.integer  "bedrooms"
    t.integer  "bathrooms"
    t.integer  "type"
    t.integer  "diningrooms"
    t.integer  "familyrooms"
    t.integer  "officerooms"
    t.boolean  "basement"
    t.boolean  "loft"
    t.string   "floortype"
    t.boolean  "fireplace"
    t.boolean  "swimmingpool"
    t.boolean  "spa"
    t.boolean  "pets_allowed"
    t.boolean  "green"
    t.boolean  "accessible"
    t.boolean  "furnished"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rentbill_line_items", :force => true do |t|
    t.integer  "rentbill_id"
    t.decimal  "amount",      :precision => 10, :scale => 0
    t.string   "category"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rentbills", :force => true do |t|
    t.integer  "tenant_id"
    t.date     "bill_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sessions", :force => true do |t|
    t.string   "session_id", :null => false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], :name => "index_sessions_on_session_id"
  add_index "sessions", ["updated_at"], :name => "index_sessions_on_updated_at"

  create_table "tenants", :force => true do |t|
    t.integer  "property_unit_id"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "phone_private"
    t.string   "phone_work"
    t.string   "phone_mobile"
    t.integer  "id_number"
    t.integer  "id_issuer"
    t.date     "date_of_birth"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vendors", :force => true do |t|
    t.string   "company_name"
    t.string   "streetaddress"
    t.string   "phone_number"
    t.string   "phone_mobile"
    t.string   "phone_emergency"
    t.string   "fax_number"
    t.string   "email"
    t.string   "website"
    t.string   "contact_person"
    t.text     "description"
    t.text     "services"
    t.integer  "vendor_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "work_assignments", :force => true do |t|
    t.integer  "property_unit_id"
    t.date     "service_from"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
