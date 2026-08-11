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

ActiveRecord::Schema[8.1].define(version: 2026_08_11_133358) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "anime_events", force: :cascade do |t|
    t.bigint "anime_id", null: false
    t.datetime "created_at", null: false
    t.bigint "event_id", null: false
    t.datetime "updated_at", null: false
    t.index ["anime_id"], name: "index_anime_events_on_anime_id"
    t.index ["event_id"], name: "index_anime_events_on_event_id"
  end

  create_table "anime_genres", force: :cascade do |t|
    t.bigint "anime_id", null: false
    t.datetime "created_at", null: false
    t.bigint "genre_id", null: false
    t.datetime "updated_at", null: false
    t.index ["anime_id", "genre_id"], name: "index_anime_genres_on_anime_id_and_genre_id", unique: true
    t.index ["anime_id"], name: "index_anime_genres_on_anime_id"
    t.index ["genre_id"], name: "index_anime_genres_on_genre_id"
  end

  create_table "anime_locations", force: :cascade do |t|
    t.bigint "anime_id", null: false
    t.datetime "created_at", null: false
    t.bigint "location_id", null: false
    t.text "notes"
    t.string "source_url"
    t.datetime "updated_at", null: false
    t.index ["anime_id", "location_id"], name: "index_anime_locations_on_anime_id_and_location_id", unique: true
    t.index ["anime_id"], name: "index_anime_locations_on_anime_id"
    t.index ["location_id"], name: "index_anime_locations_on_location_id"
  end

  create_table "anime_studios", force: :cascade do |t|
    t.bigint "anime_id", null: false
    t.datetime "created_at", null: false
    t.bigint "studio_id", null: false
    t.datetime "updated_at", null: false
    t.index ["anime_id", "studio_id"], name: "index_anime_studios_on_anime_id_and_studio_id", unique: true
    t.index ["anime_id"], name: "index_anime_studios_on_anime_id"
    t.index ["studio_id"], name: "index_anime_studios_on_studio_id"
  end

  create_table "anime_titles", force: :cascade do |t|
    t.bigint "anime_id", null: false
    t.datetime "created_at", null: false
    t.string "language", null: false
    t.string "title", null: false
    t.bigint "title_type_id", null: false
    t.datetime "updated_at", null: false
    t.index ["anime_id"], name: "index_anime_titles_on_anime_id"
    t.index ["title_type_id"], name: "index_anime_titles_on_title_type_id"
  end

  create_table "animes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "description"
    t.date "release_date"
    t.bigint "series_id"
    t.datetime "updated_at", null: false
    t.index ["series_id"], name: "index_animes_on_series_id"
  end

  create_table "cities", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name_en"
    t.string "name_ja", null: false
    t.bigint "prefecture_id", null: false
    t.datetime "updated_at", null: false
    t.index ["prefecture_id"], name: "index_cities_on_prefecture_id"
  end

  create_table "event_types", force: :cascade do |t|
    t.string "code", null: false
    t.datetime "created_at", null: false
    t.string "name_en", null: false
    t.string "name_ja", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_event_types_on_code", unique: true
  end

  create_table "events", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "description"
    t.date "end_date"
    t.bigint "event_type_id", null: false
    t.text "fee_note"
    t.bigint "location_id", null: false
    t.string "name_en"
    t.string "name_ja"
    t.string "official_url"
    t.date "start_date"
    t.datetime "updated_at", null: false
    t.index ["event_type_id"], name: "index_events_on_event_type_id"
    t.index ["location_id"], name: "index_events_on_location_id"
  end

  create_table "genres", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name_en", null: false
    t.string "name_ja", null: false
    t.datetime "updated_at", null: false
  end

  create_table "location_names", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "language"
    t.bigint "location_id", null: false
    t.string "name"
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_location_names_on_location_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "address_en"
    t.string "address_ja", null: false
    t.bigint "city_id", null: false
    t.datetime "created_at", null: false
    t.decimal "latitude", precision: 10, scale: 6
    t.decimal "longitude", precision: 10, scale: 6
    t.string "official_url"
    t.datetime "updated_at", null: false
    t.index ["city_id"], name: "index_locations_on_city_id"
  end

  create_table "prefectures", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name_en", null: false
    t.string "name_ja", null: false
    t.datetime "updated_at", null: false
  end

  create_table "series", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name_en"
    t.string "name_ja"
    t.datetime "updated_at", null: false
  end

  create_table "studios", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name_en"
    t.string "name_ja"
    t.datetime "updated_at", null: false
  end

  create_table "title_types", force: :cascade do |t|
    t.string "code", null: false
    t.datetime "created_at", null: false
    t.string "name", null: false
    t.datetime "updated_at", null: false
    t.index ["code"], name: "index_title_types_on_code", unique: true
  end

  add_foreign_key "anime_events", "animes"
  add_foreign_key "anime_events", "events"
  add_foreign_key "anime_genres", "animes"
  add_foreign_key "anime_genres", "genres"
  add_foreign_key "anime_locations", "animes"
  add_foreign_key "anime_locations", "locations"
  add_foreign_key "anime_studios", "animes"
  add_foreign_key "anime_studios", "studios"
  add_foreign_key "anime_titles", "animes"
  add_foreign_key "anime_titles", "title_types"
  add_foreign_key "animes", "series"
  add_foreign_key "cities", "prefectures"
  add_foreign_key "events", "event_types"
  add_foreign_key "events", "locations"
  add_foreign_key "location_names", "locations"
  add_foreign_key "locations", "cities"
end
