class CreateBookings < ActiveRecord::Migration[7.2]
  def change
    create_table :bookings do |t|
      t.references :superpower, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.date :start_date
      t.date :end_date
      t.text :comment

      t.timestamps
    end
  end
end
