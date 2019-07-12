# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
#User.destroy_all
#Order.destroy_all

10.times do |i|
     Product.create({
        sku: "nro de pieza #{i+1}",
        name: "description #{i+1}",
        brand: "marca #{i+1}",
        version: "modelo #{i+1}",
        year: "año #{i+1}",
        photo: "https://picsum.photos/id/#{i+50}/100/100",
        category: "modelo #{i+1}",
        price: 1000
     }) 
 end
#  
# AdminUser.create!(email: 'admin@mail.com', password: '123123', password_confirmation: '123123') if Rails.env.development?

#10.times do |i|
#    User.create(email:"usuario#{i}@gmail.com", password:'123123')
#end