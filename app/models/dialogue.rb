class Dialogue < ActiveRecord::Base
  belongs_to :appearance
  has_many :rules
  has_many :actions
end
