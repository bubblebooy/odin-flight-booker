class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.references :flight, foreign_key: true
      t.references :passenger, foreign_key: true

      t.timestamps
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
