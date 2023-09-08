# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
BingoItem.destroy_all

items = [
  { name: 'hummus' },
  { name: '42069' },
  { name: 'karaoke' },
  { name: 'hello, Kailey, this is your terminal' },
  { name: 'jeffs keyboard' },
  { name: 'ringo' },
  { name: 'brucifer' },
  { name: 'athena' },
  { name: 'mike dao-moji' },
  { name: 'chilis' },
  { name: 'craigslist is beautiful too' },
  { name: 'garrett gregor app' },
  { name: 'undefined method [] for nil:NilClass' },
  { name: 'music league' },
  { name: 'vlad the impaler' },
  { name: 'cockblocking C/I' },
  { name: 'putting the M in MVP' },
  { name: 'pr to Turing' },
  { name: 'mythical creatures' },
  { name: 'thiccccc controller' },
  { name: 'zoolander' },
  { name: 'pom pa pom pom pom' },
  { name: 'chatgpt da real mvp' },
  { name: 'chumbawumba' },
  { name: 'deep doo ditt woo hoo shu' }


]

items.each do |item|
  BingoItem.create(item)
end