# require 'yelp4r'

class Restaurant < ActiveRecord::Base
  attr_accessible :location, :name
  belongs_to :membership

  def self.search_yelp
  	client = Yelp::Client.new
  	request = Yelp::V2::Business::Request::Id.new(
:yelp_business_id => 'pjb2WMwa0AfK3L-dWimO8w', :consumer_key => 'gWYmMc9IuG3BunTZ7wksdg', :consumer_secret => 'nX2WxFhVsFyc1xv4mxWlrKjiIoc', :token => 'XV17VrdAVnyd3C1dgw3nr5zQS5M_UP49', :token_secret => 'BIIEBisznwMQqAsgl2kTtb1-5eE')
  response = client.search(request)

  respone.each do |asdf|
  	r = Restaurant.new

  end
end


