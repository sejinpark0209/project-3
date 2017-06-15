# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Post.delete_all
Apartment.delete_all
User.delete_all

user_1 = User.create({email: "s@j.com", password: "123456"})
apartment_1 = Apartment.create({
    name: "Elevate on 5th",
    address: "343 S 500 E, Salt Lake City",
    city: "Salt Lake City",
    state: "UT"
    })
apartment_2 = Apartment.create({
    name: "Jane's Lofts",
    address: "Golden Gate Bridge",
    city: "San Francisco",
    state: "CA"
    })

post_1 = Post.create({
      contact: "s@j.com",
      p_ref_fee: 500,
      ratio_me: 250,
      exp_date: 02/05/2018
    })

user_1.post << post_1

  p "Seed data populated!"
