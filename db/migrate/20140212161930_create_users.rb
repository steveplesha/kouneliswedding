class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_hash
      t.string :password_salt
      t.string :firstname1
      t.string :lastname1
      t.string :firstname2
      t.string :lastname2
      t.string :firstname3
      t.string :lastname3
      t.string :firstname4
      t.string :lastname4   
      t.string :firstname5
      t.string :lastname5         
      t.integer :numguests
      t.integer :maxguests
      t.string :guestnames
      t.boolean :respond
      t.string :role
      t.boolean :ceremony
      t.boolean :reception
      t.boolean :ceremony2
      t.boolean :reception2
      t.boolean :ceremony3
      t.boolean  :reception3
      t.boolean :ceremony4
      t.boolean :reception4
      t.boolean :ceremony5
      t.boolean :reception5
      t.string :comment
      

      t.timestamps
    end
	
	add_index :users, :username, :unique => true
  end
end
