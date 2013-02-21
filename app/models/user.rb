class User < ActiveRecord::Base
  attr_accessible :currency, :email, :name, :password, :salary, :tax

	validates :currency, :email, :name, :password, :salary, :tax, :presence => true

	has_many :costs
end
