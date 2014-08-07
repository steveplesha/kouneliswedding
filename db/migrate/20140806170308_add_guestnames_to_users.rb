class AddGuestnamesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :guestnames, :string
  end
end
