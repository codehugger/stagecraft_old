class Item < ActiveRecord::Base
  belongs_to :scene
  has_many :posessions
  has_many :instances, :through => :posessions
  has_many :rules
  has_many :actions
end
