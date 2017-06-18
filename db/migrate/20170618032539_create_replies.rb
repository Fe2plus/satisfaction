class CreateReplies < ActiveRecord::Migration[5.0]
  def change
    create_table :replies do |t|
      t.integer :user_id
      t.integer :post_id
      t.string :name
      t.text :body

      t.timestamps
    end
  end
end
