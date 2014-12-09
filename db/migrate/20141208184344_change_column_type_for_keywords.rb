class ChangeColumnTypeForKeywords < ActiveRecord::Migration
  change_table :feeds do |t|
    t.change :keywords, :text
  end
end
