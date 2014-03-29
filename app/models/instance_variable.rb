class InstanceVariable < ActiveRecord::Base
  belongs_to :instance
  belongs_to :variable
end
