class Appearance < ActiveRecord::Base
  belongs_to :character
  belongs_to :scene
  has_many :dialogues
  has_many :rules
  has_many :actions
end
