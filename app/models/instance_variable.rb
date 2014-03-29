class InstanceVariable < ActiveRecord::Base
  include Tokenable

  belongs_to :instance
  belongs_to :variable
end
