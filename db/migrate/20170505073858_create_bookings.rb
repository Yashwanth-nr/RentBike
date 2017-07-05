class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.integer :bike_id
      t.integer :user_id
      t.boolean :confirmed, default: false
      t.boolean :is_available, default: true

      t.timestamps null: false
    end
  end
end
