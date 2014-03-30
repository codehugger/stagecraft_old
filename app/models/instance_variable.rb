class InstanceVariable < ActiveRecord::Base
  include Tokenable

  belongs_to :instance
  belongs_to :variable

  def to_s
    "#{variable}: #{value}"
  end
end
