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
  rating: rand(1.0..5).round(1)
)

file = File.open(Rails.root.join("db/avatars/drink_jagger.jpg"))
drink_jagger.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")
drink_jagger.save!

pouris_hilton = User.create!(
  first_name: 'Pouris',
  last_name: 'Hilton',
  email: 'pouris-hilton@space.com',
  password: 'spacebnb',
  rating: rand(1.0..5).round(1)
)

file = File.open(Rails.root.join("db/avatars/pouris_hilton.jpg"))
pouris_hilton.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")
pouris_hilton.save!

muncha_kunis = User.create!(
  first_name: 'Muncha',
  last_name: 'Kunis',
  email: 'muncha-kunis@space.com',
  password: 'spacebnb',
  rating: rand(1.0..5).round(1)
)

file = File.open(Rails.root.join("db/avatars/muncha_kunis.jpg"))
muncha_kunis.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")
muncha_kunis.save!

jeff_golum = User.create!(
  first_name: 'Jeff',
  last_name: 'Golum',
  email: 'jeff-golum@space.com',
  password: 'spacebnb',
  rating: rand(1.0..5).round(1)
)

file = File.open(Rails.root.join("db/avatars/jeff_golum.jpg"))
jeff_golum.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")
jeff_golum.save!

scoop_dogg = User.create!(
  first_name: 'Scoop',
  last_name: 'Dogg',
  email: 'scoop-dogg@space.com',
  password: 'spacebnb',
  rating: rand(1.0..5).round(1)
)

file = File.open(Rails.root.join("db/avatars/scoop_dogg.jpg"))
scoop_dogg.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")
scoop_dogg.save!

leonardo_dicarpaccio = User.create!(
  first_name: 'Leonardo',
  last_name: 'DiCarpaccio',
  email: 'leonardo-dicarpaccio@space.com',
  password: 'spacebnb',
  rating: rand(1.0..5).round(1)
)

file = File.open(Rails.root.join("db/avatars/leonardo_dicarpaccio.jpg"))
leonardo_dicarpaccio.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")
leonardo_dicarpaccio.save!

chef_bezos = User.create!(
  first_name: 'Chef',
  last_name: 'Bezos',
  email: 'chef-bezos@space.com',
  password: 'spacebnb',
  rating: rand(1.0..5).round(1)
)

file = File.open(Rails.root.join("db/avatars/chef_bezos.jpg"))
chef_bezos.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")
chef_bezos.save!

elon_trust = User.create!(
  first_name: 'Elon',
  last_name: 'Trust',
  email: 'elon-trust@space.com',
  password: 'spacebnb',
  rating: rand(1.0..5).round(1)
)

file = File.open(Rails.root.join("db/avatars/elon_trust.jpg"))
elon_trust.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")
elon_trust.save!

john_mcdonald = User.create!(
  first_name: 'John',
  last_name: 'McDonald',
  email: 'john-mcdonaldd@space.com',
  password: 'spacebnb',
  rating: rand(1.0..5).round(1)
)

file = File.open(Rails.root.join("db/avatars/john_mcdonald.jpg"))
john_mcdonald.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")
john_mcdonald.save!

leona_helmsworth = User.create!(
  first_name: 'Leona',
  last_name: 'Helmsworth',
  email: 'leona-helmsworth@space.com',
  password: 'spacebnb',
  rating: rand(1.0..5).round(1)
)

file = File.open(Rails.root.join('db/avatars/leona_helmsworth.jpg'))
leona_helmsworth.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")
leona_helmsworth.save!

seyfried_gonzalez = User.create!(
  first_name: 'Seyfried',
  last_name: 'Gonzalez',
  email: 'seyfried-gonzalez@space.com',
  password: 'spacebnb',
  rating: rand(1.0..5).round(1)
)

file = File.open(Rails.root.join('db/avatars/seyfried_gonzalez.jpg'))
seyfried_gonzalez.photo.attach(io: file, filename: "avatar.jpg", content_type: "image/jpeg")
seyfried_gonzalez.save!

# => LES PLANÈTES :

puts 'Creating planets...'

orbeatles = Planet.new(
  name: 'Orbeatles',
  owner: drink_jagger,
  content: 'La planète Orbeatles est une planète très musicale. Vous pourrez y écouter les plus grands tubes des Beatles, mais aussi de tous les autres groupes de rock des années 60. Vous pourrez aussi y rencontrer les Beatles, mais attention, ils sont très vieux maintenant, et ils ont un peu perdu la tête.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Voie Lactée',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-1.jpg"))
orbeatles.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
orbeatles.save!

madonnerre = Planet.new(
  name: 'Madonnerre',
  owner: pouris_hilton,
  content: 'La planète Madonnerre semble être une planète très calme, mais attention, elle est en réalité très dangereuse. En effet, la planète est habitée par des créatures très étranges, qui ressemblent à des humains, mais qui sont en réalité des robots. Ils sont très dangereux, et ils ont pour habitude de se déguiser en humains pour mieux vous attaquer, Madonna est leur chef.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Andromède',
  rating: rand(1.0..5).round(1),
  kind: 'star',
  price_per_day: rand(100.50..100_000.50).round(2)
)

file = File.open(Rails.root.join("db/images/planete-2.jpg"))
madonnerre.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
madonnerre.save!

gravitelegere = Planet.new(
  name: 'Gravitelegere',
  owner: chef_bezos,
  content: 'La planète Gravitelegere est une planète très légère, en effet, la gravité y est très faible, et vous pourrez donc y faire des sauts de plusieurs mètres de haut. On peut y trouver le sosie de Jeff Bezos, qui est le propriétaire de la planète.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Amazone',
  rating: rand(1.0..5).round(1),
  kind: 'meteorite',
  price_per_day: rand(100.50..100_000.50).round(2)
)

file = File.open(Rails.root.join("db/images/planete-3.jpg"))
gravitelegere.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
gravitelegere.save!

asterohidalgo = Planet.new(
  name: 'Asterohidalgo',
  owner: pouris_hilton,
  content: 'La planète Asterohidalgo est une planète très dangereuse, en effet, elle est habitée par des créatures se nommant les Hidalgos. Ces créatures se permettent de vous insulter, et de vous attaquer, et elles sont très dangereuses. La planète est aussi habitée par des astéroïdes, qui sont très dangereux.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Velocité',
  rating: rand(1.0..5).round(1),
  kind: 'star',
  price_per_day: rand(100.50..100_000.50).round(2)
)

file = File.open(Rails.root.join("db/images/planete-4.jpg"))
asterohidalgo.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
asterohidalgo.save!

cosmopolitain = Planet.new(
  name: 'Cosmopolitain',
  owner: muncha_kunis,
  content: 'La planète Cosmopolitain est une planète très étrange, vous pouvez vous baigner dans des piscines de cocktails, et vous pouvez aussi vous baigner dans des piscines de champagne.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Ivromede',
  rating: rand(1.0..5).round(1),
  kind: 'meteorite',
  price_per_day: rand(100.50..100_000.50).round(2)
)

file = File.open(Rails.root.join("db/images/planete-5.jpg"))
cosmopolitain.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
cosmopolitain.save!

meteoreo = Planet.new(
  name: 'Meteoreo',
  owner: leonardo_dicarpaccio,
  content: 'La planète Meteoreo est une planète croustillante, en effet, elle est composée de météorites en chocolat, et vous pourrez donc les manger. La planète est aussi habitée par des créatures comestibles, qui sont très bonnes.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Milky Way',
  rating: rand(1.0..5).round(1),
  kind: 'comet',
  price_per_day: rand(100.50..100_000.50).round(2)
)

file = File.open(Rails.root.join("db/images/planete-6.jpg"))
meteoreo.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
meteoreo.save!

galaxsea = Planet.new(
  name: 'Galaxsea',
  owner: jeff_golum,
  content: 'La planète Galaxsea est une planète très humide, en effet, elle est composée d\'eau transparente, et vous pourrez donc admirer les étoiles à travers l\'eau. Ne vous inquiétez pas, vous pourrez respirer sous l\'eau, car l\'eau est composée d\'oxygène.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Galaxie',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)

file = File.open(Rails.root.join("db/images/planete-7.jpg"))
galaxsea.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
galaxsea.save!

marsmallow = Planet.new(
  name: 'Marsmallow',
  owner: scoop_dogg,
  content: 'La planète Marsmallow est une planète très sucrée, en effet, elle est composée de marshmallows, et vous pourrez donc les manger. Vous pourrez croiser le sosie de Snoop Dogg, fumant se petite douceur sur un nuage de mousse.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Arlequin',
  rating: rand(1.0..5).round(1),
  kind: 'star',
  price_per_day: rand(100.50..100_000.50).round(2)
)

file = File.open(Rails.root.join("db/images/planete-8.jpg"))
marsmallow.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
marsmallow.save!

fluffy = Planet.new(
  name: 'Fluffy',
  owner: jeff_golum,
  content: 'La planète Fluffy est couverte de douce fourrure. Il est toujours agréable de s\'y promener, quel que soit le climat.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Downy',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-9.jpg"))
fluffy.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
fluffy.save!

gelato = Planet.new(
  name: 'Gelato',
  owner: elon_trust,
  content: 'La planète Gelato est connue pour ses champs de crème glacée. Apportez une cuillère !',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Tasty',
  rating: rand(1.0..5).round(1),
  kind: 'comet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-10.jpg"))
gelato.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
gelato.save!

astralia = Planet.new(
  name: 'Astralia',
  owner: pouris_hilton,
  content: 'Inspirée par la terre vibrante du pays d\'en bas, Astralia combine des éléments de l\'espace et de l\'arrière-pays sauvage. On dit que les kangourous sautent parmi les étoiles ici!',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Galaxie',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-11.jpg"))
astralia.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
astralia.save!

venusuela = Planet.new(
  name: 'Venusuela',
  owner: chef_bezos,
  content: 'Inspirée par le pays tropical du Venezuela, Venusuela offre un paysage verdoyant parsemé d\'étoiles scintillantes. On dit que les oiseaux de paradis volent à côté des comètes ici!',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Galaxie',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-12.jpg"))
venusuela.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
venusuela.save!

solarway = Planet.new(
  name: 'Solarway',
  owner: drink_jagger,
  content: 'Inspirée par les fjords pittoresques de Norvège, Solarway est une planète pleine de merveilles naturelles éclairées par un soleil éternel. Les aurores boréales sont visibles tous les soirs ici!',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Galaxie',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-13.jpg"))
solarway.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
solarway.save!

plutalie = Planet.new(
  name: 'Plutalie',
  owner: elon_trust,
  content: 'Avec une influence distincte de l\'Italie, Plutalie est réputée pour sa gastronomie stellaire et ses vignobles galactiques.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Galaxie',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-14.jpg"))
plutalie.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
plutalie.save!

jupan = Planet.new(
  name: 'Jupan',
  owner: chef_bezos,
  content: 'Fusionnant le Japon avec Jupiter, Jupan se distingue par sa culture traditionnelle et sa technologie futuriste.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Galaxie',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-15.jpg"))
jupan.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
jupan.save!

marsico = Planet.new(
  name: 'Marsico',
  owner: pouris_hilton,
  content: 'Marsico, fusion de Mars et du Mexique, est connue pour ses plages de sable rouge et sa cuisine épicée interstellaire.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Galaxie',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-16.jpg"))
marsico.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
marsico.save!

neptaustralie = Planet.new(
  name: 'Neptaustralie',
  owner: seyfried_gonzalez,
  content: 'Neptaustralie est une fusion fantastique de Neptune et de l\'Australie, avec des récifs de corail interstellaires et une faune exotique unique.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Galaxie',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-17.jpg"))
neptaustralie.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
neptaustralie.save!

saturnada = Planet.new(
  name: 'Saturnada',
  owner: john_mcdonald,
  content: 'Saturnada est une fusion de Saturne et du Canada, avec de vastes anneaux de glace et une abondance de sirop d\'érable interstellaire.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Galaxie',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-18.jpg"))
saturnada.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
saturnada.save!

mercureland = Planet.new(
  name: 'Mercureland',
  owner: leona_helmsworth,
  content: 'Mercureland, une fusion de Mercure et de l\'Irlande, est célèbre pour ses plaines rocheuses et son whisky spatial de première qualité.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Galaxie',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-19.jpg"))
mercureland.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
mercureland.save!

venusienne = Planet.new(
  name: 'Venusienne',
  owner: john_mcdonald,
  content: 'Venusienne, une fusion de Vénus et de la Tunisie, avec des dunes dorées et une culture riche et vibrante.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Galaxie',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-20.jpg"))
venusienne.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
venusienne.save!

jupiterranee = Planet.new(
  name: 'Jupiterranée',
  owner: seyfried_gonzalez,
  content: 'Jupiterranée, fusion de Jupiter et de la Méditerranée, offre des eaux chaudes et bleues et une cuisine intergalactique.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Galaxie',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-21.jpg"))
jupiterranee.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
jupiterranee.save!

marsilie = Planet.new(
  name: 'Marsilie',
  owner: john_mcdonald,
  content: 'Marsilie, fusion de Mars et de l\'Italie, avec des canyons rouges profonds et des pâtes extraterrestres délicieuses.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Galaxie',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-22.jpg"))
marsilie.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
marsilie.save!

neptalie = Planet.new(
  name: 'Neptalie',
  owner: seyfried_gonzalez,
  content: 'Neptalie, fusion de Neptune et de l\'Italie, avec ses nuages bleus et sa passion pour le football extraterrestre.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Galaxie',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-23.jpg"))
neptalie.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
neptalie.save!

uranta = Planet.new(
  name: 'Uranta',
  owner: john_mcdonald,
  content: 'Uranta, une fusion d\'Uranus et de l\'Atlantique, offre des océans bleus profonds et une tempête qui ne s\'arrête jamais.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Galaxie',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-24.jpg"))
uranta.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
uranta.save!

plutologne = Planet.new(
  name: 'Plutologne',
  owner: seyfried_gonzalez,
  content: 'Plutologne, une fusion de Pluton et de la Pologne, où la température est glaciale mais l\'hospitalité est chaude.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Galaxie',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-25.jpg"))
plutologne.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
plutologne.save!

jupitogne = Planet.new(
  name: 'Jupitogne',
  owner: seyfried_gonzalez,
  content: 'Jupitogne, mélange de Jupiter et de l\'Argentine, connu pour son football passionné et ses tempêtes massives.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Galaxie',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-26.jpg"))
jupitogne.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
jupitogne.save!

satourkey = Planet.new(
  name: 'Satourkey',
  owner: john_mcdonald,
  content: 'Satourkey, une fusion de Saturne et de la Turquie, est célèbre pour ses anneaux impressionnants et ses bazaars interstellaires.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Galaxie',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-27.jpg"))
satourkey.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
satourkey.save!

voldemostar = Planet.new(
  name: 'Voldemostar',
  owner: muncha_kunis,
  content: 'La planète Voldemostar est une planète mystérieuse, enveloppée dans l\'obscurité. On dit que ceux qui la visitent peuvent ressentir une présence menaçante, comme si un sortilège puissant avait été jeté sur la planète.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Obscurus',
  rating: rand(1.0..5).round(1),
  kind: 'star',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-28.jpg"))
voldemostar.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
voldemostar.save!

darthvedarium = Planet.new(
  name: 'Darthvedarium',
  owner: scoop_dogg,
  content: 'La planète Darthvedarium est une planète sombre et sinistre. Elle est réputée pour être le lieu de naissance de nombreux seigneurs sith. Vous pourrez sentir la puissance du côté obscur de la Force ici.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Exegol',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-29.jpg"))
darthvedarium.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
darthvedarium.save!

lokitune = Planet.new(
  name: 'Lokitune',
  owner: john_mcdonald,
  content: 'La planète Lokitune est une planète pleine de malice et de tromperie. Les visiteurs doivent faire preuve de prudence, car les habitants de la planète sont connus pour leur esprit rusé et trompeur.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Asgard',
  rating: rand(1.0..5).round(1),
  kind: 'comet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-30.jpg"))
lokitune.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
lokitune.save!

vaderoid = Planet.new(
  name: 'Vaderoid',
  owner: drink_jagger,
  content: 'Vaderoid, une planète énigmatique et sombre. Elle est caractérisée par un fort sentiment d\'obscurité et de pouvoir. Les fans de Star Wars sentiront certainement la Force en visitant cette planète.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Galaxie Lointaine',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-31.jpg"))
vaderoid.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
vaderoid.save!

banebula = Planet.new(
  name: 'Banebula',
  owner: pouris_hilton,
  content: 'Banebula, une planète chaotique qui rappelle les ruelles sombres de Gotham. Malgré son atmosphère de menace, les fans de Batman seront ravis de visiter cette planète.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Gotham',
  rating: rand(1.0..5).round(1),
  kind: 'meteorite',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-32.jpg"))
banebula.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
banebula.save!

saurondor = Planet.new(
  name: 'Saurondor',
  owner: scoop_dogg,
  content: 'La planète Saurondor est une planète sombre et menaçante, semblable à la Terre du Milieu. Les fans du Seigneur des Anneaux ressentiront la présence du grand Sauron en visitant cette planète.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Middle-earth',
  rating: rand(1.0..5).round(1),
  kind: 'comet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-33.jpg"))
saurondor.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
saurondor.save!

zemozero = Planet.new(
  name: 'Zémozéro',
  owner: john_mcdonald,
  content: 'La planète Zémozéro est une planète où la gravité est presque inexistante. Les amateurs de Marvel pourraient trouver amusant de flotter autour tout en imaginant le Baron Zemo faisant des pirouettes dans l\'air.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Middle-earth',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-34.jpg"))
zemozero.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
zemozero.save!

blofeldbit = Planet.new(
  name: 'Blofeldbit',
  owner: leonardo_dicarpaccio,
  content: 'La planète Blofeldbit est une planète qui semble tourner sans fin dans une orbite. Les amateurs de James Bond peuvent envisager de regarder la planète tourner en rond tout en imaginant Ernst Stavro Blofeld complètement désorienté.',
  size: rand(10_000.50..100_000.50).round(2),
  galaxy: 'Middle-earth',
  rating: rand(1.0..5).round(1),
  kind: 'planet',
  price_per_day: rand(100.50..100_000.50).round(2)
)
file = File.open(Rails.root.join("db/images/planete-35.jpg"))
blofeldbit.photo.attach(io: file, filename: "planete.jpg", content_type: "image/jpeg")
blofeldbit.save!

# => LES RESERVATIONS :
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
  total_price: 18_900,
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
  end_date: '2025-05-14',
  total_price: 157,
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
