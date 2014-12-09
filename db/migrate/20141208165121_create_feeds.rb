class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|

      t.integer :listing_id
      t.string  :client_name
      t.string  :business_phone
      t.string  :address_1
      t.string  :address_2
      t.string  :billable_duration
      t.string  :ctn
      t.string  :city
      t.string  :payout
      t.string  :zip
      t.string  :category_1
      t.string  :category_2
      t.string  :keywords

      t.timestamps
    end

    add_reference :feeds, :client, index: true
    add_index :feeds, :listing_id, unique: true
  end
end
