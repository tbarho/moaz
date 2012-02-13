class ChangeDecimalPrecisionForBaths < ActiveRecord::Migration
  def change
    change_column :properties, :baths, :decimal, :precision => 10, :scale => 2 
  end
end
