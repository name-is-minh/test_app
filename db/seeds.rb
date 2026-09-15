# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# seed data
[
  "T1",
  "Messi",
  "Faker",
  "Curry",
  "Goat"
].each do |title|
  Book.find_or_create_by!(title: title)
end

# different data between env
if Rails.env.development?
  Book.find_or_create_by!(title: "dev book")
elsif Rails.env.test?
  Book.find_or_create_by!(title: "test book")
elsif Rails.env.production?
  Book.find_or_create_by!(title: "prod book")
end