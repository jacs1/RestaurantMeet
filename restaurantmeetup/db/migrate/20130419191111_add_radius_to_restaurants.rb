class AddRadiusToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :radius, :integer
  end
end
