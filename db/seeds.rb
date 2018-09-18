# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Airport.create!(name:  "Chicago O'Hare International Airport",
                code: "ORD");
Airport.create!(name:  "Hartsfield-Jackson Atlanta International Airport",
                code: "ATL");
Airport.create!(name:  "Dallas/Fort Worth International Airport",
                code: "DFW");
Airport.create!(name:  "Nashville International Airport",
                code: "BNA");
Airport.create!(name:  "John F. Kennedy International Airport",
                code: "JFK");
Airport.create!(name:  "Los Angeles International Airport",
                code: "LAX");
Airport.create!(name:  "Denver International Airport",
                code: "DEN");
Airport.create!(name:  "Honolulu International Airport",
                code: "HNL");

Flight.create!(departure_airport_id: 1, arrival_airport_id: 2, departure_time: 42.days.ago)
Flight.create!(departure_airport_id: 3, arrival_airport_id: 4, departure_time: 10.hours.since)
Flight.create!(departure_airport_id: 5, arrival_airport_id: 4, departure_time: 2.days.since)
Flight.create!(departure_airport_id: 4, arrival_airport_id: 7, departure_time: 26.hours.since)
Flight.create!(departure_airport_id: 7, arrival_airport_id: 5, departure_time: 40.hours.since)
Flight.create!(departure_airport_id: 1, arrival_airport_id: 6, departure_time: 5.days.since)
Flight.create!(departure_airport_id: 2, arrival_airport_id: 8, departure_time: 7.days.since)
Flight.create!(departure_airport_id: 3, arrival_airport_id: 6, departure_time: 9.days.since)
