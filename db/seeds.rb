# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
User.destroy_all
Comment.destroy_all
#Order.destroy_all


10.times do |i|
     Product.create({
        sku: "Nro de pieza #{i+1}",
        name: "Description #{i+1}",
        brand: "Marca #{i+1}",
        version: "Modelo #{i+1}",
        year: "Año #{i+2000}",
        photo: "https://picsum.photos/id/#{i+50}/100/100",
        category: "Categoria #{i+1}",
        price: 1000
     }) 
 end

10.times do |i|
   User.create(email:"usuario#{i}@gmail.com", password:'123123')
end

 20.times do |i|
   Comment.create({ product: Product.order("RANDOM()").first,
   content: "Comentario #{i+1}",
   user_id: User.order("RANDOM()").first.id
   })
  end
#  
# AdminUser.create!(email: 'admin@mail.com', password: '123123', password_confirmation: '123123') if Rails.env.development?

