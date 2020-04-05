# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

g1 = Genre.create(name: "Soul/Rhythm & Blues")
g2 = Genre.create(name: "Hip Hop")
g3 = Genre.create(name: "Disco")



a1 = Artist.create(name: "Bill Withers", bio: "Created Classics and Inspired Millions. RIP. 2020.")
a2 = Artist.create(name: "Notorious B.I.G.", bio: "Helped define hip-hop in the early 90's and was the first fat man to show people whats good.")
a3 = Artist.create(name: "Diana Ross", bio: "Brought Disco to its height and spread love all around.")


s1 = Song.create(name: "Ain't No Sunshine", artist_id: 1, genre_id: 1)
s2 = Song.create(name: "Machine Gun Funk", artist_id: 2, genre_id: 2)
s3 = Song.create(name: "I'm Coming Out", artist_id: 3, genre_id: 3)
