class CreatePosessions < ActiveRecord::Migration
  def change
    create_table :posessions do |t|
      t.references :item, :null => false
      t.references :instance, :null => false

      t.timestamps
    end
  end
end
