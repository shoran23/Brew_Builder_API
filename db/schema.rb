# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_22_021657) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "grains", force: :cascade do |t|
    t.string "name"
    t.string "origin"
    t.boolean "mash"
    t.integer "color"
    t.integer "power"
    t.decimal "potential"
    t.integer "max"
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hops", force: :cascade do |t|
    t.string "name"
    t.string "origin"
    t.decimal "alpha"
    t.decimal "beta"
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "hop_type"
  end

  create_table "recipe_grain_ledgers", force: :cascade do |t|
    t.bigint "recipe_id", null: false
    t.bigint "grain_id", null: false
    t.decimal "qty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "percentage"
    t.index ["grain_id"], name: "index_recipe_grain_ledgers_on_grain_id"
    t.index ["recipe_id"], name: "index_recipe_grain_ledgers_on_recipe_id"
  end

  create_table "recipe_hop_ledgers", force: :cascade do |t|
    t.bigint "recipe_id", null: false
    t.bigint "hop_id", null: false
    t.decimal "qty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "time"
    t.index ["hop_id"], name: "index_recipe_hop_ledgers_on_hop_id"
    t.index ["recipe_id"], name: "index_recipe_hop_ledgers_on_recipe_id"
  end

  create_table "recipe_style_ledgers", force: :cascade do |t|
    t.bigint "recipe_id", null: false
    t.bigint "style_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_recipe_style_ledgers_on_recipe_id"
    t.index ["style_id"], name: "index_recipe_style_ledgers_on_style_id"
  end

  create_table "recipe_yeast_ledgers", force: :cascade do |t|
    t.bigint "recipe_id", null: false
    t.bigint "yeast_id", null: false
    t.decimal "qty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_recipe_yeast_ledgers_on_recipe_id"
    t.index ["yeast_id"], name: "index_recipe_yeast_ledgers_on_yeast_id"
  end

  create_table "recipe_yeast_scaffolds", force: :cascade do |t|
    t.bigint "recipe_id", null: false
    t.bigint "yeast_id", null: false
    t.decimal "qty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipe_id"], name: "index_recipe_yeast_scaffolds_on_recipe_id"
    t.index ["yeast_id"], name: "index_recipe_yeast_scaffolds_on_yeast_id"
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name"
    t.string "volume"
    t.string "efficiency"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "description"
    t.decimal "og"
    t.decimal "fg"
    t.decimal "alc_by_vol"
    t.decimal "ibu"
    t.integer "srm"
  end

  create_table "styles", force: :cascade do |t|
    t.string "name"
    t.string "overview"
    t.integer "ibu_low"
    t.integer "ibu_high"
    t.integer "srm_low"
    t.integer "srm_high"
    t.decimal "og_low"
    t.decimal "og_high"
    t.decimal "fg_low"
    t.decimal "fg_high"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "alc_by_vol_low"
    t.decimal "alc_by_vol_high"
  end

  create_table "yeasts", force: :cascade do |t|
    t.string "name"
    t.string "lab"
    t.string "type"
    t.string "form"
    t.integer "temp_low"
    t.integer "temp_high"
    t.decimal "attenuation"
    t.string "flocculation"
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "yeast_type"
  end

  add_foreign_key "recipe_grain_ledgers", "grains"
  add_foreign_key "recipe_grain_ledgers", "recipes"
  add_foreign_key "recipe_hop_ledgers", "hops"
  add_foreign_key "recipe_hop_ledgers", "recipes"
  add_foreign_key "recipe_style_ledgers", "recipes"
  add_foreign_key "recipe_style_ledgers", "styles"
  add_foreign_key "recipe_yeast_ledgers", "recipes"
  add_foreign_key "recipe_yeast_ledgers", "yeasts"
  add_foreign_key "recipe_yeast_scaffolds", "recipes"
  add_foreign_key "recipe_yeast_scaffolds", "yeasts"
end
