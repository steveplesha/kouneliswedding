class AddMultiplereceptionToUser < ActiveRecord::Migration
  def change
    add_column :users, :ceremony3, :string
    add_column :users, :reception3, :string
    add_column :users, :ceremony4, :string
    add_column :users, :reception4, :string
    add_column :users, :ceremony5, :string
    add_column :users, :reception5, :string
  end
end
