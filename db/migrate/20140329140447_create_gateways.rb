class CreateGateways < ActiveRecord::Migration
  def change
    create_table :gateways do |t|
      t.references :destination_scene, :null => false
      t.references :source_scene, :null => false

      t.timestamps
    end
  end
end
