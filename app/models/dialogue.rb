class Dialogue < ActiveRecord::Base
  include Tokenable

  belongs_to :appearance
  has_many :rules
  has_many :actions
end
