# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# t.string "breed"
# t.string "name"
# t.string "color"
# t.integer "age"
Animal.destroy_all

class Seed
  def self.begin
    seed = Seed.new
    seed.generate_dogs
    seed.generate_cats
  end

  def generate_dogs
    10.times do |i|
      dog = Animal.create!(
        breed: Faker::Creature::Dog.breed,
        name: Faker::Creature::Dog.name,
        color: Faker::Color.color_name,
        age: Faker::Number.between(from: 1, to: 14)
      )
      puts "Dog #{dog.name} created!"
    end
  end
  def generate_cats
      10.times do |j|
        cat = Animal.create!(
          breed: Faker::Creature::Cat.breed,
          name: Faker::Creature::Cat.name,
          color: Faker::Color.color_name,
          age: Faker::Number.between(from: 1, to: 14)
        )
        puts "Cat #{cat.name} created!"
      end
    end
  end
Seed.begin
