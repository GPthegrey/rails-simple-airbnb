# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'
puts "destroying all flats..."
Flat.destroy_all
puts 'creating flats...'
8.times do
  Flat.create!(
    name: Faker::TvShows::BrooklynNineNine.quote,
    address: Faker::Address.full_address,
    description: Faker::Markdown.emphasis,
    price_per_night: (50..100).to_a.sample,
    number_of_guests: (1..5).to_a.sample
  )
end
