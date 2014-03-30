class Item < ActiveRecord::Base
  include Tokenable

  belongs_to :scene
  has_many :rules
  has_many :actions
end
