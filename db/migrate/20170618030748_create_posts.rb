class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :name
      t.string :title, null:false
      t.text :body, null: false

      t.timestamps
    end
  end
end
