class Item < ActiveRecord::Base
  include Tokenable

  belongs_to :scene
  has_many :posessions
  has_many :instances, :through => :posessions
  has_many :rules
  has_many :actions
end
