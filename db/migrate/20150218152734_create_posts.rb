class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|

      t.string   "title"
      t.text     "body"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false

      t.timestamps null: false
    end
  end
end
