class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :name, :null => false
      t.references :game, :null => false

      t.timestamps
    end
  end
end
