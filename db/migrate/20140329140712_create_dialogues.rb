class CreateDialogues < ActiveRecord::Migration
  def change
    create_table :dialogues do |t|
      t.text :question
      t.text :answer
      t.references :appearance

      t.timestamps
    end
  end
end
