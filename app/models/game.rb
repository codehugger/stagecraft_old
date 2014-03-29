class Game < ActiveRecord::Base
  include Tokenable

  has_many :scenes
end
