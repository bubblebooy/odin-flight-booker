class CreateFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :flights do |t|
      t.references :departure_airport, foreign_key: true
      t.references :arrival_airport, foreign_key: true
      t.datetime :departure_time

      t.timestamps
    end
  end
end
