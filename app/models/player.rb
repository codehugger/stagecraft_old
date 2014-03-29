class Player < ActiveRecord::Base
  has_many :instances
  has_many :ownerships
  has_many :games, :through => :ownerships
end
