class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.string :address
      t.decimal :price
      t.integer :beds
      t.decimal :baths
      t.integer :sqft
      t.text :description

      t.timestamps
    end
  end
end
