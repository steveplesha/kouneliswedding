class AddCeremony2ToUser < ActiveRecord::Migration
  def change
    add_column :users, :ceremony2, :string
    add_column :users, :reception2, :string
  end
end
