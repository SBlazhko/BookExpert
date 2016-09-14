class CreateWorkGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :work_genres do |t|
      t.string :title
      t.string :description
      t.integer :user_id
      t.integer :price_per_symbol

      t.timestamps
    end
  end
end
