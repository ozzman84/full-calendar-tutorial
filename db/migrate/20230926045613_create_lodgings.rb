class CreateLodgings < ActiveRecord::Migration[7.0]
  def change
    create_table :lodgings do |t|
      t.string :address
      t.float :rent
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
