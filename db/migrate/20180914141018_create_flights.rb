class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.integer :departure_airport_ids, foreign_key: true
      t.integer :arrival_airport_ids, foreign_key: true
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
