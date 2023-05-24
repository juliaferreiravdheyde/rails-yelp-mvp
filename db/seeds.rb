# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Starting seed...'

puts 'Cleaning db...'
Restaurant.destroy_all

puts 'Creating restaurant...'

5.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::Number.number,
    category: Restaurant::CATEGORY.sample
  )
end

puts "#{Restaurant.count} restaurants created!"
puts 'Finished! :D'
