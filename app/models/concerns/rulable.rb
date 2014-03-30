module Rulable
  extend ActiveSupport::Concern

  def available?(instance)
    self.rules.each do |rule|
      iv = instance.instance_variables.find_by(:variable_id => rule.variable_id)
      if iv == nil || (rule.variable_id == iv.variable_id && rule.value != iv.value)
        return false
      end
    end
    return true
  end
end
