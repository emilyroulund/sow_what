ActiveRecord::Schema.define(version: 2019_06_18_183932) do

  create_table "comment_upvotes", force: :cascade do |t|
    t.integer "comment_id"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_comment_upvotes_on_comment_id"
    t.index ["user_id"], name: "index_comment_upvotes_on_user_id"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "user_id"
    t.integer "plant_id"
    t.string "title"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_comments_on_plant_id"
    t.index ["user_id"], name: "index_comments_on_user_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_favorites_on_plant_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "plant_likes", force: :cascade do |t|
    t.integer "user_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_plant_likes_on_plant_id"
    t.index ["user_id"], name: "index_plant_likes_on_user_id"
  end

  create_table "plants", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.string "sunlight"
    t.string "water"
    t.string "soil"
    t.string "humidity"
    t.string "temperature"
    t.string "climate"
    t.string "pot_size"
    t.string "description"
    t.string "img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_plants_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
