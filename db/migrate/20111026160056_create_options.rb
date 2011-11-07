class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.integer :property_id
      t.string :content

      t.timestamps
    end
  end
end
