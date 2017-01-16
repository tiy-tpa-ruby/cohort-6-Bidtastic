class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :photo_id
      t.integer :min_bid
      t.integer :bid_increment
      t.integer :final_bid
      t.string :category
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
