class CreateVariables < ActiveRecord::Migration
  def change
    create_table :variables do |t|
      t.string :name, :null => false
      t.references :game, :null => false, :index => true

      t.timestamps
    end
  end
end
