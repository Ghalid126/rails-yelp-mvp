puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    category:     'chinese',
    phone_number:  '01092471909'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    category:     'belgian',
    phone_number:  '01092471902'
  },
  {
    name:         'Pizza Hut',
    address:      'Casablanca',
    category:     'italian',
    phone_number:  '01092471903'
  },
  {
    name:         'Grillardière',
    address:      'Numa',
    category:     'italian',
    phone_number:  '01092471901'
  },
  {
    name:         'Bistrot burger',
    address:      'Gauthier',
    category:     'italian',
    phone_number:  '01092471907'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
