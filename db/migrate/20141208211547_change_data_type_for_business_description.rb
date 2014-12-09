class ChangeDataTypeForBusinessDescription < ActiveRecord::Migration
  change_table :businesses do |t|
    t.change :business_description, :text
  end
end
