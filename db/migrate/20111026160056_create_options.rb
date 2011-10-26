class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.integer :property_id
      t.string :name
      t.string :value

      t.timestamps
    end
  end
end
