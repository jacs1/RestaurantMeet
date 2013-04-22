class AddStarsToRestaurants < ActiveRecord::Migration
  def change
    add_column :restaurants, :rating_img_url_small, :string
  end
end
