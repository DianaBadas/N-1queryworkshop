# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

(1..20).each do |id|
  User.create!(
    id: id,
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
end

(1..20).each do |id|
  Address.create!(
    id: id,
    user_id: rand(1..20),
    city: Faker::Address.city,
    street: Faker::Address.street_name
  )

end

(1..20).each do |id|
  Post.create!(
    id: id,
    user_id: rand(1..20),
    body: Faker::Quotes::Chiquito.joke
  )
end
