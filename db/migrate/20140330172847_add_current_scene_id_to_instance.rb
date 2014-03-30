class AddCurrentSceneIdToInstance < ActiveRecord::Migration
  def change
    add_column :instances, :current_scene_id, :integer
  end
end
