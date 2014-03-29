class CreateInstances < ActiveRecord::Migration
  def change
    create_table :instances do |t|
      t.references :player, :null => false
      t.references :game, :null => false

      t.timestamps
    end
  end
end
