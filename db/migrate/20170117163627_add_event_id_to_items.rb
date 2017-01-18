class AddEventIdToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :event_id, :integer
  end
end
