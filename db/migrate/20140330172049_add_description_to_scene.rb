class AddDescriptionToScene < ActiveRecord::Migration
  def change
    add_column :scenes, :description, :text
  end
end
