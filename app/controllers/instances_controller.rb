class InstancesController < ApplicationController
  before_action :load_instance

  def show
  end

  # Scene actions

  def travel
    gateway = @instance.current_scene.exits.find(params[:gateway_id])
    @instance.current_scene = gateway.destination_scene
    @instance.save
    redirect_to instance_path(@instance)
  end

  def converse
  end

  def interact
    item = @instance.current_scene.items.find(params[:item_id])
    item.run_actions
  end

  private

  def load_instance
    @instance = Instance.find(params[:id]) if params[:id]
  end
end
