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
      t.boolean :respond
      t.role :string
      t.ceremony :boolean
      t.reception :boolean
      t.ceremony2 :boolean
      t.reception2 :boolean    
      t.ceremony3 :boolean
      t.reception3 :boolean  
      t.ceremony4 :boolean
      t.reception4 :boolean  
      t.ceremony5 :boolean
      t.reception5 :boolean  
      t.comment :string
      

      t.timestamps
    end
	
	add_index :users, :username, :unique => true
  end
end
