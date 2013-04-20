# require 'yelp4r'

class Restaurant < ActiveRecord::Base
  attr_accessible :location, :name
  belongs_to :membership

  def self.search_yelp(search)
  	# binding.pry
  	client = Yelp::Client.new
  	request = Yelp::V2::Business::Request::Id.new(
:yelp_business_id => 'pjb2WMwa0AfK3L-dWimO8w', :consumer_key => 'gWYmMc9IuG3BunTZ7wksdg', :consumer_secret => 'nX2WxFhVsFyc1xv4mxWlrKjiIoc', :token => 'XV17VrdAVnyd3C1dgw3nr5zQS5M_UP49', :token_secret => 'BIIEBisznwMQqAsgl2kTtb1-5eE')
  @response = client.search(request)

  @response.each do |x|
  	r = Restaurant.new
  	r.address
  end

#   	# construct a client instance

# # perform an address/location-based search for cream puffs nearby
# request = Yelp::V1::Review::Request::Location.new(
#             :address => '650 Mission St',
#             :city => 'San Francisco',
#             :state => 'CA',
#             :radius => 2,
#             :term => 'cream puffs',
#             :yws_id => 'k1cVqhtPACN0YZvDBQ844w')
# response = client.search(request)




#   end



end
end
