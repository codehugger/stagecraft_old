class InstancesController < ApplicationController
  before_action :load_instance

  def show
  end

  private

  def load_instance
    @instance = Instance.find(params[:id]) if params[:id]
  end
end
