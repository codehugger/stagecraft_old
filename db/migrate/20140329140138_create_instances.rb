class CreateInstances < ActiveRecord::Migration
  def change
    create_table :instances do |t|
      t.references :player
      t.references :game

      t.timestamps
    end
  end
end
