class AddFirstSceneIdToGame < ActiveRecord::Migration
  def change
    add_column :games, :first_scene_id, :integer
  end
end
