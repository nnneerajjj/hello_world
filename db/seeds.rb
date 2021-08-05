# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name: 'Example User',
             email: 'user@example.com',
             password: 'password',
             password_confirmation: 'password')

99.times do |index|
  name = Faker::Name.name
  User.create!(name: name,
               email: "user#{index}@example.com",
               password: 'password',
               password_confirmation: 'password')
end

users = User.order(:created_at).take(6)

50.times do
  users.each do |user|
    user.microposts.create!(content: Faker::Lorem.sentence)
  end
end
