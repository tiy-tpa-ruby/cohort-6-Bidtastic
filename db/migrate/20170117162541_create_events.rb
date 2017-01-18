class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :location
      t.string :address

      t.timestamps
    end
  end
end
