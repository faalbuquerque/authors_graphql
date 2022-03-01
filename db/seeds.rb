# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts 'Criando autores...'
authors = [
  { name: 'ana', age: 25},
  { name: 'joana', age: 30 },
  { name: 'marcia', age: 35 }
]

Author.create(authors)
puts 'Autores criados!'

sleep 2

puts 'Criando artigos...'

ana_articles = [
  { title: 'Andando sozinha', description: 'aaaaaaaa', release_date: 0.days.ago },
  { title: 'Comendo chocolate', description: 'bbbbbbbbbb', release_date: 1.days.ago },
  { title: 'Duvidas de uma inocente', description: 'cccccccccc', release_date: 2.days.ago }
]
joana_articles = [
  { title: 'Anchovas com mel', description: 'dddddddddd', release_date: 0.days.ago },
  { title: 'Desventuras de jojo', description: 'eeeeeeeeee', release_date: 1.days.ago },
  { title: 'Bacanas em suas casas', description: 'fffffffff', release_date: 2.days.ago }
]
marcia_articles = [
  { title: 'Lorotas', description: 'ggggggggggg', release_date: 0.days.ago },
  { title: 'Minerando bitcoins', description: 'hhhhhhhhhh', release_date: 1.days.ago },
  { title: 'Javali assado', description: 'iiiiiiiiii', release_date: 2.days.ago }
]

Author.find_by(name: 'ana').articles.create(ana_articles)
Author.find_by(name: 'joana').articles.create(joana_articles)
Author.find_by(name: 'marcia').articles.create(marcia_articles)

puts 'Artigos criados'

