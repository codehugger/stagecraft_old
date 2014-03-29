class CreateScenes < ActiveRecord::Migration
  def change
    create_table :scenes do |t|
      t.string :name
      t.references :game, :null => false

      t.timestamps
    end
  end
end
