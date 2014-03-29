class CreateDialogues < ActiveRecord::Migration
  def change
    create_table :dialogues do |t|
      t.text :question, :null => false
      t.text :answer, :null => false
      t.references :appearance, :null => false

      t.timestamps
    end
  end
end
