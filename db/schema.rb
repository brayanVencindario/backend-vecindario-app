# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_05_14_142959) do

  create_table "jwt_denylist", charset: "utf8", collation: "utf8_unicode_ci", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "jti", null: false
    t.datetime "expired_at", null: false
    t.index ["jti"], name: "index_jwt_denylist_on_jti"
  end

  create_table "leads", charset: "utf8", collation: "utf8_unicode_ci", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "email"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "proyect_leads", charset: "utf8", collation: "utf8_unicode_ci", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "lead_id", null: false
    t.bigint "proyect_id", null: false
    t.index ["lead_id"], name: "index_proyect_leads_on_lead_id"
    t.index ["proyect_id"], name: "index_proyect_leads_on_proyect_id"
  end

  create_table "proyects", charset: "utf8", collation: "utf8_unicode_ci", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "name"
    t.string "type_proyect"
    t.string "city_name"
    t.string "proyect_address"
    t.float "price"
    t.string "area"
    t.integer "vis_value"
    t.integer "bathrooms_numbres"
    t.integer "parking_lot"
    t.string "sales_email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_proyects", charset: "utf8", collation: "utf8_unicode_ci", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.bigint "proyect_id"
    t.index ["proyect_id"], name: "index_user_proyects_on_proyect_id"
    t.index ["user_id"], name: "index_user_proyects_on_user_id"
  end

  create_table "users", charset: "utf8", collation: "utf8_unicode_ci", options: "ENGINE=MyISAM", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "phone"
    t.string "email"
    t.string "password"
    t.integer "permission"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
