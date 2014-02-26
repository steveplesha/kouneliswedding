class AddCeremonyToUser < ActiveRecord::Migration
  def change
      add_column :users, :ceremony, :string
  end
end
