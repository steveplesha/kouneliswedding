class AddRespondToUser < ActiveRecord::Migration
  def change
    add_column :users, :respond, :boolean
  end
end
