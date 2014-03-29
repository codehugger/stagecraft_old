class CreateGateways < ActiveRecord::Migration
  def change
    create_table :gateways do |t|
      t.references :destination_scene
      t.references :source_scene

      t.timestamps
    end
  end
end
