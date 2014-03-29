class CreateAppearances < ActiveRecord::Migration
  def change
    create_table :appearances do |t|
      t.references :character
      t.references :scene

      t.timestamps
    end
  end
end
