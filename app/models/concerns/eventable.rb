module Eventable
  extend ActiveSupport::Concern

  included do
  end

  def run_events(instance)
    self.events.each do |event|
      instance.instance_variables.where(variable_id: event.variable_id).first_or_create! do |iv|
        iv.value = event.value
      end
    end
  end
end
