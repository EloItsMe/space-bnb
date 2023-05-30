puts 'Cleaning Database'

Reservation.destroy_all
Planet.destroy_all
User.destroy_all

puts 'Creating users...'
drink_jagger = User.create!(
  first_name: 'Drink',
  last_name: 'Jagger',
  email: 'drink-jagger@space.com',
  password: 'spacebnb',
  rating: rand(1.0..5).round(1),
)

pouris_hilton = User.create!(
  first_name: 'Pouris',
  last_name: 'Hilton',
  email: 'pouris-hilton@space.com',
  password: 'spacebnb',
  rating: rand(1.0..5).round(1),
)

muncha_kunis = User.create!(
  first_name: 'Muncha',
  last_name: 'Kunis',
  email: 'muncha-kunis@space.com',
  password: 'spacebnb',
  rating: rand(1.0..5).round(1),
)

jeff_golum = User.create!(
  first_name: 'Jeff',
  last_name: 'Golum',
  email: 'jeff-golum@space.com',
  password: 'spacebnb',
  rating: rand(1.0..5).round(1),
)

scoop_dogg = User.create!(
  first_name: 'Scoop',
  last_name: 'Dogg',
  email: 'scoop-dogg@space.com',
  password: 'spacebnb',
  rating: rand(1.0..5).round(1),
)

leonardo_dicarpaccio = User.create!(
  first_name: 'Leonardo',
  last_name: 'DiCarpaccio',
  email: 'leaonardo-dicarpaccio@space.com',
  password: 'spacebnb',
  rating: rand(1.0..5).round(1),
)

chef_bezos = User.create!(
  first_name: 'Chef',
  last_name: 'Bezos',
  email: 'chef-bezos@space.com',
  password: 'spacebnb',
  rating: rand(1.0..5).round(1),
)

elon_trust = User.create!(
  first_name: 'Elon',
  last_name: 'Trust',
  email: 'elon-trust@space.com',
  password: 'spacebnb',
  rating: rand(1.0..5).round(1),
)

puts 'Creating planets...'

orbeatles = Planet.new(
  name: 'Orbeatles',
  owner: drink_jagger,
  content: 'La planète Orbeatles est une planète très musicale. Vous pourrez y écouter les plus grands tubes des Beatles, mais aussi de tous les autres groupes de rock des années 60. Vous pourrez aussi y rencontrer les Beatles, mais attention, ils sont très vieux maintenant, et ils ont un peu perdu la tête.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Voie Lactée',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100000.50).round(2),
)
file = File.open(Rails.root.join("db/images/planete-1.jpg"))
orbeatles.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
orbeatles.save!

madonnerre = Planet.new(
  name: 'Madonnerre',
  owner: pouris_hilton,
  content: 'La planète Madonnerre semble être une planète très calme, mais attention, elle est en réalité très dangereuse. En effet, la planète est habitée par des créatures très étranges, qui ressemblent à des humains, mais qui sont en réalité des robots. Ils sont très dangereux, et ils ont pour habitude de se déguiser en humains pour mieux vous attaquer, Madonna est leur chef.',
  size: rand(10000.50..100000.50).round(2),
  galaxy: 'Andromède',
  rating: rand(1.0..5).round(1),
  kind: 'star',
  price_per_day: rand(100.50..100_000.50).round(2),
)

file = File.open(Rails.root.join("db/images/planete-22.jpg"))
madonnerre.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
madonnerre.save!

gravitelegere = Planet.new(
  name: 'Gravitelegere',
  owner: chef_bezos,
  content: 'La planète Gravitelegere est une planète très légère, en effet, la gravité y est très faible, et vous pourrez donc y faire des sauts de plusieurs mètres de haut. On peut y trouver le sosie de Jeff Bezos, qui est le propriétaire de la planète.',
  size: rand(10000.50..100000.50).round(2),
  galaxy: 'Amazone',
  rating: rand(1.0..5).round(1),
  kind: 'meteorite',
  price_per_day: rand(100.50..100_000.50).round(2),
)

file = File.open(Rails.root.join("db/images/planete-30.jpg"))
gravitelegere.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
gravitelegere.save!

asterohidalgo = Planet.new(
  name: 'Asterohidalgo',
  owner: pouris_hilton,
  content: 'La planète Asterohidalgo est une planète très dangereuse, en effet, elle est habitée par des créatures se nommant les Hidalgos. Ces créatures se permettent de vous insulter, et de vous attaquer, et elles sont très dangereuses. La planète est aussi habitée par des astéroïdes, qui sont très dangereux.',
  size: rand(10000.50..100000.50).round(2),
  galaxy: 'Velocité',
  rating: rand(1.0..5).round(1),
  kind: 'star',
  price_per_day: rand(100.50..100_000.50).round(2),
)

file = File.open(Rails.root.join("db/images/planete-19.jpg"))
asterohidalgo.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
asterohidalgo.save!

cosmopolitain = Planet.new(
  name: 'Cosmopolitain',
  owner: chef_bezos,
  content: 'La planète Cosmopolitain est une planète très étrange, vous pouvez vous baigner dans des piscines de cocktails, et vous pouvez aussi vous baigner dans des piscines de champagne.',
  size: rand(10000.50..100000.50).round(2),
  galaxy: 'Ivromede',
  rating: rand(1.0..5).round(1),
  kind: 'meteorite',
  price_per_day: rand(100.50..100_000.50).round(2),
)

file = File.open(Rails.root.join("db/images/planete-12.jpg"))
cosmopolitain.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
cosmopolitain.save!

meteoreo = Planet.new(
  name: 'Meteoreo',
  owner: leonardo_dicarpaccio,
  content: 'La planète Meteoreo est une planète croustillante, en effet, elle est composée de météorites en chocolat, et vous pourrez donc les manger. La planète est aussi habitée par des créatures comestibles, qui sont très bonnes.',
  size: rand(10000.50..100000.50).round(2),
  galaxy: 'Milky Way',
  rating: rand(1.0..5).round(1),
  kind: 'comet',
  price_per_day: rand(100.50..100_000.50).round(2),
)

file = File.open(Rails.root.join("db/images/planete-9.jpg"))
meteoreo.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
meteoreo.save!

galaxsea = Planet.new(
  name: 'Galaxsea',
  owner: jeff_golum,
  content: 'La planète Galaxsea est une planète très humide, en effet, elle est composée d\'eau transparente, et vous pourrez donc admirer les étoiles à travers l\'eau. Ne vous inquiétez pas, vous pourrez respirer sous l\'eau, car l\'eau est composée d\'oxygène.',
  size: rand(10000.50..100000.50).round(2),
  galaxy: 'Galaxie',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2),
)

file = File.open(Rails.root.join("db/images/planete-33.jpg"))
galaxsea.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
galaxsea.save!

marsmallow = Planet.new(
  name: 'Marsmallow',
  owner: scoop_dogg,
  content: 'La planète Marsmallow est une planète très sucrée, en effet, elle est composée de marshmallows, et vous pourrez donc les manger. Vous pourrez croiser le sosie de Snoop Dogg, fumant se petite douceur sur un nuage de mousse.',
  size: rand(10000.50..100000.50).round(2),
  galaxy: 'Arlequin',
  rating: rand(1.0..5).round(1),
  kind: 'star',
  price_per_day: rand(100.50..100_000.50).round(2),
)

file = File.open(Rails.root.join("db/images/planete-5.jpg"))
marsmallow.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
marsmallow.save!

puts 'Creating reservations...'

Reservation.create!(
  renter: drink_jagger,
  planet: orbeatles,
  start_date: '2023-06-14',
  end_date: '2023-06-24',
  total_price: 2178,
  status: 'Confirmed'
)
Reservation.create!(
  renter: chef_bezos,
  planet: gravitelegere,
  start_date: '2023-12-05',
  end_date: '2024-06-30',
  total_price: 18900,
  status: 'cancelled'
)
Reservation.create!(
  renter: scoop_dogg,
  planet: marsmallow,
  start_date: '2023-09-14',
  end_date: '2023-06-24',
  total_price: 120,
  status: 'pending'
)
Reservation.create!(
  renter: chef_bezos,
  planet: cosmopolitain,
  start_date: '2023-09-14',
  end_date: '2032-05-4',
  total_price: 1736000,
  status: 'confirmed'
)
Reservation.create!(
  renter: leonardo_dicarpaccio,
  planet: meteoreo,
  start_date: '2023-09-14',
  end_date: '2023-06-24',
  total_price: 2170,
  status: 'pending'
)
Reservation.create!(
  renter: jeff_golum,
  planet: galaxsea,
  start_date: '2023-09-01',
  end_date: '2023-09-26',
  total_price: 144,
  status: 'confirmed'
)
Reservation.create!(
  renter: pouris_hilton,
  planet: asterohidalgo,
  start_date: '2025-07-14',
  end_date: '2025-08-23',
  total_price: 2409,
  status: 'cancelled'
)
Reservation.create!(
  renter: elon_trust,
  planet: madonnerre,
  start_date: '2025-08-14',
  end_date: '2025-09-23',
  total_price: 2.456,
  status: 'pending'
)

puts 'Finished!'
