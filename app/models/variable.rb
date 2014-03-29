class Variable < ActiveRecord::Base
  belongs_to :game
  has_many :rules
  has_many :actions
end
