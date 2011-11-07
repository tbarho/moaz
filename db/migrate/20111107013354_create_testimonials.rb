class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :person
      t.string :address
      t.text :content
      t.integer :position

      t.timestamps
    end
  end
end
