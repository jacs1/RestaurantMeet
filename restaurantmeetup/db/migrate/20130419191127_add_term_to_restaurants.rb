class AddTermToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :term, :string
  end
end
