class Instance < ActiveRecord::Base
  include Tokenable

  belongs_to :player
  belongs_to :game
  has_many :instance_variables
  has_many :variable, :through => :instance_variables
end
