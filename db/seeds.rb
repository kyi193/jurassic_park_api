# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

diet_types = ["Herbivore", "Carnivore"].each{ |t| DietType.find_or_create_by(name: t) }

carnivore_diet = DietType.find_by(name: "Carnivore")
herbivore_diet = DietType.find_by(name: "Herbivore")

carnivores = [
  "Tyrannosaurus",
  "Velociraptor",
  "Spinosaurus",
  "Megalosaurus",
].each{ |b| DinosaurBreed.find_or_create_by(name: b, diet_type: carnivore_diet)}

herbivores = [
  "Brachiosaurus",
  "Stegosaurus",
  "Ankylosaurus",
  "Triceratops"
].each{ |b| DinosaurBreed.find_or_create_by(name: b, diet_type: herbivore_diet)}

cage_statuses = ["ACTIVE", "DOWN"].each{ |s| CageStatus.find_or_create_by(name: s)}
