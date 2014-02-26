class AddReceptionToUser < ActiveRecord::Migration
  def change
      add_column :users, :reception, :string
  end
end
