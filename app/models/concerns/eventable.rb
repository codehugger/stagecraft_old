module Eventable
  extend ActiveSupport::Concern

  included do
  end

  def run_events
    true
  end
end
