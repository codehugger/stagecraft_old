class CreateOwnerships < ActiveRecord::Migration
  def change
    create_table :ownerships do |t|
      t.references :player, :null => false, :index => true
      t.references :game, :null => false, :index => true

      t.timestamps
    end
  end
end
