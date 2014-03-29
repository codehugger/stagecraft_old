class Ownership < ActiveRecord::Base
  include Tokenable

  belongs_to :player
  belongs_to :game
end
