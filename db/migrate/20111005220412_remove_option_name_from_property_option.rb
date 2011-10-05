class RemoveOptionNameFromPropertyOption < ActiveRecord::Migration
  def up
    rename_column :property_options, :option_name, :name
    rename_column :property_options, :option_value, :value
  end

  def down
    rename_column :property_options, :name, :option_name
    rename_column :property_options, :value, :option_value
  end
end
