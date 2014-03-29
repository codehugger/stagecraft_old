class Character < ActiveRecord::Base
  belongs_to :game
  has_many :appearances
  has_many :scenes, :through => :appearances
  has_many :dialogues, :through => :appearances
  has_many :rules, :through => :appearances
  has_many :actions, :through => :appearances
end
