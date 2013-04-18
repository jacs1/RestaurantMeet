class Address < ActiveRecord::Base
  attr_accessible :location
  belongs_to :user
end
