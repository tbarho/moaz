class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :title
      t.string :slug
      t.text :body

      t.timestamps
    end
  end
end
