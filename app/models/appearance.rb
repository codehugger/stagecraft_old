class Appearance < ActiveRecord::Base
  include Tokenable

  belongs_to :character
  belongs_to :scene
  has_many :dialogues
  has_many :rules
  has_many :events
end
