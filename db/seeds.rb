# HOW TO SEPARATE SEEDS INTO SEPARATE FILES?

=begin
require 'csv'
CSV.foreach(Rails.root.join('lib/uscities.csv'), headers: true) do |row|
  
  City.create({
    name: row[0],
    state: row[1],
    lat: row[2],
    lng: row[3]
  })
end
=end
# Generate a bunch of additional users.
=begin
99.times do |n|
  name  = Faker::Name.name
  email = "user-#{n+1}@seed.org"
  password = "password"
  User.create!(name:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end
=end