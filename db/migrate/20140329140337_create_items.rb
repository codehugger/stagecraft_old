class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.references :scene

      t.timestamps
    end
  end
end
