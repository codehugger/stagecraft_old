class Item < ActiveRecord::Base
  include Tokenable
  include Eventable

  belongs_to :scene
  has_many :rules
  has_many :events

  def to_s
    "#{name}"
  end
end
