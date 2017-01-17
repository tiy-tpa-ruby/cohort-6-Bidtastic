class AddEventIdToItemsTable < ActiveRecord::Migration[5.0]
  def change
      add_column: :items
  end
end
