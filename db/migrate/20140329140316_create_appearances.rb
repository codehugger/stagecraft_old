class CreateAppearances < ActiveRecord::Migration
  def change
    create_table :appearances do |t|
      t.references :character, :null => false
      t.references :scene, :null => false

      t.timestamps
    end
  end
end
