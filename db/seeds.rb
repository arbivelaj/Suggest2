# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning database...'
Review.destroy_all

puts 'Creating reviews...'
reviews_attributes = [
  {
    title: "Best Brewery in Milan",
    desription: "great choice of IPAs",
    photo: nil,
    item: "Lagunitas",
    category: "bar",
    location: "via Adige",
    rating_spot: 5,
    place: "BBB"},
    {
      title: "Best Pizza in Milan",
      desription: "migliore margherita che abbia mai mangiato",
      photo: nil,
      item: "margherita",
      category: "restaurant",
      location: "Duomo di milano",
      rating_spot: 4,
      place: "Sorbillo"},
      {
        title: "Pizza in due secondi",
        desription: "non abbiamo aspettato un secondo",
        photo: nil,
        item: "margherita",
        category: "restaurant",
        location: "via Verona",
        rating_spot: 3,
        place: "Pomodorino",
      }
      ]
      Review.create!(reviews_attributes)
      puts 'Finished!'

