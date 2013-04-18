class Group < ActiveRecord::Base
  attr_accessible :name
  has_many :users, :through => :membership
  has_one :membership
end
