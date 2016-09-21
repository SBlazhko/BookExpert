class CreateBiographies < ActiveRecord::Migration[5.0]
  def change
    create_table :biographies do |t|
      t.string :work_experiance
      t.string :bibliography
      t.string :slogan
      t.integer :user_id

      t.timestamps
    end
  end
end
