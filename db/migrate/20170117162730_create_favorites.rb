class CreateFavorites < ActiveRecord::Migration[5.0]
  def change
    create_table :favorites do |t|
      t.boolean :favorite
      t.integer :user_id
      t.references :item, foreign_key: true

      t.timestamps
    end
  end
end
