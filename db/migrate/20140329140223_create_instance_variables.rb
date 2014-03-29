class CreateInstanceVariables < ActiveRecord::Migration
  def change
    create_table :instance_variables do |t|
      t.references :variable
      t.references :instance
      t.text :value

      t.timestamps
    end
  end
end
