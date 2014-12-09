class ChangeDataTypeForListingId < ActiveRecord::Migration
  change_table :feeds do |t|
    t.change :listing_id, :string
  end
end
