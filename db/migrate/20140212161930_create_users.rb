class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_hash
      t.string :password_salt
      t.string :firstname1
      t.string :firstname2
      t.string :lastname1
      t.string :lastname2
      t.integer :numguests
      t.integer :maxguests

      t.timestamps
    end
	
	add_index :users, :username, :unique => true
  end
end
