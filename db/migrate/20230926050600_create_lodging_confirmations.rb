class CreateLodgingConfirmations < ActiveRecord::Migration[7.0]
  def change
    create_table :lodging_confirmations do |t|
      t.string :status
      t.date :date
      t.references :user, null: false, foreign_key: true
      t.references :lodging, null: false, foreign_key: true

      t.timestamps
    end
  end
end
