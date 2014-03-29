class AddTokenFieldToRelevantObjects < ActiveRecord::Migration
  def change
    add_column :actions, :token, :string
    add_column :appearances, :token, :string
    add_column :characters, :token, :string
    add_column :dialogues, :token, :string
    add_column :games, :token, :string
    add_column :gateways, :token, :string
    add_column :instances, :token, :string
    add_column :instance_variables, :token, :string
    add_column :items, :token, :string
    add_column :ownerships, :token, :string
    add_column :players, :token, :string
    add_column :posessions, :token, :string
    add_column :rules, :token, :string
    add_column :scenes, :token, :string
    add_column :variables, :token, :string
  end
end
