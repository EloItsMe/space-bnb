class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date :start_date
      t.date :end_date
      t.integer :total_price
      t.references :planet, null: false, foreign_key: true
      t.references :renter, null: false, foreign_key: { to_table: :users }
      t.string :status

      t.timestamps
    end
  end
end
