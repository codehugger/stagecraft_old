class Player < ActiveRecord::Base
  include Tokenable

  has_many :instances
  has_many :ownerships
  has_many :games, :through => :ownerships
end
