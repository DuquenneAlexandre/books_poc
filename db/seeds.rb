# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ite_loop = 1

while ite_loop < 1000
  author_1 = Author.create({author_name: Faker::Book.author})
  book_1 = Book.create({book_name: Faker::Book.title , author_id: author_1.id})
  book_2= Book.create({book_name: Faker::Book.title , author_id: author_1.id})
  book_3 = Book.create({book_name: Faker::Book.title , author_id: author_1.id})
  book_4 = Book.create({book_name: Faker::Book.title , author_id: author_1.id})
  ite_loop += 1
end
