# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

City.create!(name: "Berlin")
City.create!(name: "Londes")
City.create!(name: "Paris")
City.create!(name: "Pékin")

10.times do |i|
    Dog.create!(name: Faker::Name.first_name, city: City.find(rand(1..4)))
    Dogsitter.create!(name: Faker::Name.first_name, city: City.find(rand(1..4)))
end

    if Dog.where(city: 1) == Dogsitter.where(city: 1)
        Stroll.create!(dog: Dog.find(rand(1..10)), dogsitter: Dogsitter.find(rand(1..10)))
    end
    if Dog.where(city: 1) == Dogsitter.where(city: 1)
        Stroll.create!(dog: Dog.find(rand(1..10)), dogsitter: Dogsitter.find(rand(1..10)))
    end
    if Dog.where(city: 1) == Dogsitter.where(city: 1)
        Stroll.create!(dog: Dog.find(rand(1..10)), dogsitter: Dogsitter.find(rand(1..10)))
    end
    if Dog.where(city: 1) == Dogsitter.where(city: 1)
        Stroll.create!(dog: Dog.find(rand(1..10)), dogsitter: Dogsitter.find(rand(1..10)))
    end    

10.times do |i|
    10.times do |e|
        if Dog.find(i + 1).city == Dogsitter.find(e + 1).city
            Stroll.create!(dog: Dog.find(i + 1), dogsitter: Dogsitter.find(e + 1))
        end
    end
end


# a.zip(b).map { |x, y| x == y }