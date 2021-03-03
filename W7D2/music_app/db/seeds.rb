# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Band.destroy_all

#Users
kenneth = User.create!(email: 'kenneth@mail.com', password:'admin')

#Bands
metallica = Band.create!(
  name: 'Metallica',
  description: 'Metallica is an American heavy metal band. The band was formed in 1981 in Los Angeles by vocalist/guitarist James Hetfield and drummer Lars Ulrich.',
  image_url: 'https://static.billboard.com/files/2020/05/03-metallica-press-2018-cr-Ross-Halfin-b-billboard-1548-1589834861-compressed.jpg'
)

daft_punk = Band.create!(
  name: 'Daft Punk',
  description: 'Daft Punk were a French electronic music duo formed in 1993 in Paris by Guy-Manuel de Homem-Christo and Thomas Bangalter.',
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/4/41/Daftpunklapremiere2010.jpg'
)

the_beatles = Band.create!(
  name: 'The Beatles',
  description: 'The Beatles were an English rock band formed in Liverpool in 1960. The group, whose best-known line-up comprised John Lennon, Paul McCartney, George Harrison and Ringo Starr, are regarded as the most influential band of all time.',
  image_url: 'https://upload.wikimedia.org/wikipedia/commons/d/df/The_Fabs.JPG'
)