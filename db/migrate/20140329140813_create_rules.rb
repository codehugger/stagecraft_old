class CreateRules < ActiveRecord::Migration
  def change
    create_table :rules do |t|
      t.text :value, :null => false
      t.references :variable
      t.references :item
      t.references :gateway
      t.references :appearance
      t.references :dialogue

      t.timestamps
    end
  end
end
