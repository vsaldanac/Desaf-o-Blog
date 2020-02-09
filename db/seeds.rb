# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(email: 'admin@admin.com', username: 'desafiovamoscontodo', password: 'XAHTJEAS23123%23', password_confirmation: 'XAHTJEAS23123%23', admin: true)

4.times{ |n| Post.create!(title: "Soy el título #{n+1}", content: "Soy el contenido #{n+1}.", image_url: "https://placekitten.com/200/#{(n+1)*100}", user: User.first)} 
