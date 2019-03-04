class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.integer :flight_ids, foreign_key: true
      t.integer :passenger_ids, foreign_key: true

      t.timestamps

      t.index ["flight_id"], name: "index_bookings_on_flight_id"
      t.index ["passenger_id"], name: "index_bookings_on_passenger_id"
    end

    # add_foreign_key :bookings,
    #             :airports,
    #             column: :departure_airport_id
    # add_index :flights, :departure_airport_id
    # add_foreign_key :bookings,
    #                 :airports,
    #                 column: :arrival_airport_id
    # add_index :flights, :arrival_airport_id

  end
end
