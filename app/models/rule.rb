class Rule < ActiveRecord::Base
  belongs_to :varialbe
  belongs_to :item
  belongs_to :gateway
  belongs_to :appearance
  belongs_to :dialogue
end
