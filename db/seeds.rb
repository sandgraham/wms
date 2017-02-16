# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'    

CSV.foreach(
  Rails.root.join('db', 'seeds', 'worldcities.csv'),
  :headers => :first_row
) do |row|
  Place.create(
    :name => row['city'],
    :country_code => row['iso2'],
    :latitude => row['lat'],
    :longitude => row['lng'],
  )
end
