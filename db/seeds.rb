puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "+33 01 123 456",
    category:     "french",
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "+33 01 123 456",
    category:     "french",
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "+33 01 123 456",
    category:     "belgian",
  },
  {
    name:         "Itsu",
    address:      "Shoreditch, London",
    phone_number: "+44 070 123 456",
    category:     "japanese",
  },
  {
    name:         "Pizza East",
    address:      "Shoreditch, London",
    phone_number: "+44 070 123 456",
    category:     "italian",
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
