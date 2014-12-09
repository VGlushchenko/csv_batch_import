class AddColumnsToBusiness < ActiveRecord::Migration
  def change
    add_column :businesses, :business_name, :string
    add_column :businesses, :business_description, :string

    add_index :businesses, :business_phone, unique: true
  end
end
