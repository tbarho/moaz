class CreatePropertyOptions < ActiveRecord::Migration
  def change
    create_table :property_options do |t|
      t.integer :property_id
      t.string :option_name
      t.text :option_value

      t.timestamps
    end
  end
end
