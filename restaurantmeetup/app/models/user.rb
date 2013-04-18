class User < ActiveRecord::Base
  attr_accessible :email, :name, :password
  has_one :membership
  has_one :address
  has_many :groups, :through => :membership
end
