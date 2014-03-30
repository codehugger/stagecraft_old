class Variable < ActiveRecord::Base
  include Tokenable

  belongs_to :game
  has_many :rules
  has_many :events
end
