class RemoveIntegerFromLineItems < ActiveRecord::Migration
  def change
    remove_column :line_items, :integer
  end
end
