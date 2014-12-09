class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :client_name

      t.timestamps
    end

    add_index :clients, :client_name, unique: true
  end
end