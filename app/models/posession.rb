class Posession < ActiveRecord::Base
  belongs_to :instance
  belongs_to :item
end
