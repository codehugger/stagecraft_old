class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, :null => false
      t.references :scene, :null => false

      t.timestamps
    end
  end
end
