class CreateManuscripts < ActiveRecord::Migration[5.0]
  def change
    create_table :manuscripts do |t|
      t.string :title
      t.integer :genre
      t.integer :status
      t.integer :sender_id
      t.integer :receiver_id

      t.timestamps
    end
  end
end
