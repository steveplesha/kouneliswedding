class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :firstname3, :string
    add_column :users, :lastname3, :string
    add_column :users, :firstname4, :string
    add_column :users, :lastname4, :string
    add_column :users, :firstname5, :string
    add_column :users, :lastname5, :string
  end
end
