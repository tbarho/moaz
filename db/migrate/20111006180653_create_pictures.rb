class CreatePictures < ActiveRecord::Migration
  def change
    create_table :pictures do |t|
      t.integer :imageable_id
      t.string :imageable_type
      t.string :image

      t.timestamps
    end
  end
end
