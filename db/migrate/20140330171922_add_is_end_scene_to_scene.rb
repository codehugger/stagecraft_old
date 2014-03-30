class AddIsEndSceneToScene < ActiveRecord::Migration
  def change
    add_column :scenes, :is_end_scene, :boolean, :default => false
  end
end
