# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# t.string "type"
# t.string "name"
# t.string "color"
# t.integer "age"



class Seed

  def self.begin
    seed = Seed.new
    seed.generate_quotes
  end
  def generate_quotes
    10.times do |i|
      animal = Animal.create!(
      type: Faker::Creature::Dog.breed,
      name: Faker::Creature::Dog.name,
      color: Faker::Color.color_name,


      )

  end
end
