require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  context 'a restaurant' do 
  	setup do 
  		@restaurant = Restaurant.search_yelp

  	end
  	should 'have values from yelp' do 
  		assert_not_nil @restaurant 
  	binding.pry
  	end
  end
end
