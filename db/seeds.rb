# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require "csv"

CSV.foreach('db/apartment.csv') do |row|
  Apartment.create(:apartment_number => row[0], :room_number => row[1], :postal_code => row[2],:address => row[3], :client_number => row[4], :client_name => row[5])
end
