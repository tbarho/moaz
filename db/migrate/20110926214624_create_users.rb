class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :encrypted_password
      t.string :salt

      t.timestamps
    end
    add_index :users, :email, :unique => true
  end
end
