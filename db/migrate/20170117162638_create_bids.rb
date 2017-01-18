class CreateBids < ActiveRecord::Migration[5.0]
  def change
    create_table :bids do |t|
      t.integer :bid_amount
      t.integer :user_id
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
