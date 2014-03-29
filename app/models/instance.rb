class Instance < ActiveRecord::Base
  belongs_to :player
  belongs_to :game
  has_many :posessions
  has_many :items, :through => :posessions
  has_many :instance_variables
  has_many :variable, :through => :instance_variables
end
