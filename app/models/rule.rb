class Rule < ActiveRecord::Base
  include Tokenable

  belongs_to :variable
  belongs_to :item
  belongs_to :gateway
  belongs_to :appearance
  belongs_to :dialogue
end
