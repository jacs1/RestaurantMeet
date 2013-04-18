require 'rubygems'
require 'oauth'

consumer_key = 'gWYmMc9IuG3BunTZ7wksdg'
consumer_secret = 'nX2WxFhVsFyc1xv4mxWlrKjiIoc'
token = 'XV17VrdAVnyd3C1dgw3nr5zQS5M_UP49'
token_secret = 'BIIEBisznwMQqAsgl2kTtb1-5eE'

api_host = 'api.yelp.com'

consumer = OAuth::Consumer.new(consumer_key, consumer_secret, {:site => "http://#{api_host}"})
access_token = OAuth::AccessToken.new(consumer, token, token_secret)

path = "/v2/search?term=restaurants&location=new%20york"

p access_token.get(path).body