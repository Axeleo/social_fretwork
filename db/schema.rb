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

ActiveRecord::Schema.define(version: 2018_08_14_005012) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hosts", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "pasword_digest", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_applications", force: :cascade do |t|
    t.bigint "job_id"
    t.bigint "muso_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_job_applications_on_job_id"
    t.index ["muso_id"], name: "index_job_applications_on_muso_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.text "description"
    t.string "title", null: false
    t.string "duration"
    t.string "budget"
    t.string "location", null: false
    t.bigint "host_id", null: false
    t.datetime "date_time", null: false
    t.boolean "filled"
    t.boolean "complete"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "job_application_id"
    t.index ["host_id"], name: "index_jobs_on_host_id"
    t.index ["job_application_id"], name: "index_jobs_on_job_application_id"
  end

  create_table "muso_embeds", force: :cascade do |t|
    t.string "url", null: false
    t.bigint "muso_id", null: false
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["muso_id"], name: "index_muso_embeds_on_muso_id"
  end

  create_table "muso_imgs", force: :cascade do |t|
    t.bigint "muso_id", null: false
    t.string "img", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["muso_id"], name: "index_muso_imgs_on_muso_id"
  end

  create_table "muso_reviews", force: :cascade do |t|
    t.bigint "job_id", null: false
    t.decimal "rating", null: false
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_muso_reviews_on_job_id"
  end

  create_table "musos", force: :cascade do |t|
    t.string "name", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.text "bio"
    t.string "base_price"
    t.string "location"
    t.string "avatar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_musos_on_email", unique: true
  end

  add_foreign_key "job_applications", "jobs"
  add_foreign_key "job_applications", "musos"
  add_foreign_key "jobs", "job_applications"
  add_foreign_key "muso_embeds", "musos"
  add_foreign_key "muso_imgs", "musos"
  add_foreign_key "muso_reviews", "jobs"
end
