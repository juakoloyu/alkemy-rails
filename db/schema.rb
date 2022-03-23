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

ActiveRecord::Schema[7.0].define(version: 2022_03_23_192615) do
  create_table "characters", force: :cascade do |t|
    t.string "image"
    t.string "name"
    t.integer "age"
    t.integer "weight"
    t.text "history"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "characters_films", force: :cascade do |t|
    t.integer "character_id"
    t.integer "film_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_characters_films_on_character_id"
    t.index ["film_id"], name: "index_characters_films_on_film_id"
  end

  create_table "films", force: :cascade do |t|
    t.string "image"
    t.string "title"
    t.integer "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "image"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "moovies", force: :cascade do |t|
    t.string "image"
    t.string "title"
    t.string "score"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
