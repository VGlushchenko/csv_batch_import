class CreateBusinesses < ActiveRecord::Migration
  def change
    create_table :businesses do |t|
      t.string :business_phone

      t.timestamps
    end
  end
end
