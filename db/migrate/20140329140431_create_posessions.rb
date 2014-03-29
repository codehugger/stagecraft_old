class CreatePosessions < ActiveRecord::Migration
  def change
    create_table :posessions do |t|
      t.references :item
      t.references :instance

      t.timestamps
    end
  end
end
