class CreateInstanceVariables < ActiveRecord::Migration
  def change
    create_table :instance_variables do |t|
      t.references :variable, :null => false
      t.references :instance, :null => false
      t.text :value, :null => false

      t.timestamps
    end
  end
end
