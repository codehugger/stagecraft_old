class Posession < ActiveRecord::Base
  include Tokenable

  belongs_to :instance
  belongs_to :item
end
