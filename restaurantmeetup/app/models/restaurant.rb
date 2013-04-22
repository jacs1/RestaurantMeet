# require 'yelp4r'

class Restaurant < ActiveRecord::Base
	attr_accessible :location, :name
	belongs_to :membership

	def self.search_yelp(search)
  	# binding.pry
  	client = Yelp::Client.new
  	request = Yelp::V1::Review::Request::Location.new(
  		:address => '650 Mission St',
  		:city => 'San Francisco',
  		:state => 'CA',
  		:radius => 2,
  		:term => search,
  		:yws_id => 'k1cVqhtPACN0YZvDBQ844w')
  	response = client.search(request)
		# binding.pry
		results = []
		response['businesses'].each do |x|
			r = Restaurant.new

			r.name = x['name']
			r.location = x['photo_url']
			r.rating = x['avg_rating']
			r.address = x['address1']
			r.city = x['city']
			r.zip = x['zip']
			r.rating_img_url_small = x['rating_img_url_small']
			
			results << r

		end
		results



	end
end
