class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.references :departure_airport, foreign_key: true
      t.references :arrival_airport, foreign_key: true
      t.datetime :departure_time
      t.timestamps
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
