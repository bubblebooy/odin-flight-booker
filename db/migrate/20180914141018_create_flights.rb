class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :departure_airport_id, foreign_key: true
      t.integer :arrival_airport_id, foreign_key: true
      t.datetime :departure_time
      t.timestamps

      t.index ["arrival_airport_id"], name: "index_flights_on_arrival_airport_id"
      t.index ["departure_airport_id"], name: "index_flights_on_departure_airport_id"
    end

    # add_foreign_key :flights,
    #                 :airports,
    #                 column: :departure_airport_id
    # add_index :flights, :departure_airport_id
    # add_foreign_key :flights,
    #                 :airports,
    #                 column: :arrival_airport_id
    # add_index :flights, :arrival_airport_id

  end
end
