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
user_2 = User.create({email: "test1@gmail.com", password: "123456"})
user_3 = User.create({email: "test2@gmail.com", password: "123456"})
user_4 = User.create({email: "test3@gmail.com", password: "123456"})
user_5 = User.create({email: "test4@gmail.com", password: "123456"})
apartment_1 = Apartment.create({
    name: "Elevate on 5th",
    address: "343 S 500 E, Salt Lake City",
    state: "UT"
    })
apartment_2 = Apartment.create({
    name: "East Side Apartment",
    address: "350S 600E, Salt Lake City",
    state: "UT"
    })
apartment_3 = Apartment.create({
    name: "Cobble Creek",
    address: "5251 Cobble Creek Rd, Salt Lake City",
    state: "UT"
    })
apartment_4 = Apartment.create({
    name: "Liberty Village",
    address: "2150 South McCelland, Salt Lake City",
    state: "UT"
    })
apartment_5 = Apartment.create({
    name: "Palladio Apartment",
    address: "360 200 W, Salt Lake City",
    state: "UT"
    })
apartment_6 = Apartment.create({
    name: "Seasons at Library Square",
    address: "460 East 400 South, Salt Lake City",
    state: "UT"
    })
apartment_7 = Apartment.create({
    name: "Liberty Gateway",
    address: "50 South 500 West, Salt Lake City",
    state: "UT"
    })
apartment_8 = Apartment.create({
    name: "Jane's Lofts",
    address: "Golden Gate Bridge, San Francisco",
    state: "CA"
    })
apartment_9 = Apartment.create({
    name: "Kevin's Nest",
    address: "Montgomery Station, San Francisco",
    state: "CA"
    })

post_1 = Post.create({
      contact: "s@j.com",
      p_ref_fee: 500,
      ratio_me: 250,
      exp_date: "02/05/2018"
    })
post_2 = Post.create({
      contact: "(310)-111-1111",
      p_ref_fee: 500,
      ratio_me: 200,
      exp_date: "11/02/2019"
    })
post_3 = Post.create({
      contact: "test1@gmail.com",
      p_ref_fee: 500,
      ratio_me: 499,
      exp_date: "12/05/2018"
    })
post_4 = Post.create({
      contact: "(310)-222-2222",
      p_ref_fee: 250,
      ratio_me: 100,
      exp_date: "05/05/2018"
    })
post_5 = Post.create({
      contact: "test2@gmail.com",
      p_ref_fee: 200,
      ratio_me: 100,
      exp_date: "08/21/2018"
    })
post_6 = Post.create({
      contact: "abc@cde.com",
      p_ref_fee: 120,
      ratio_me: 50,
      exp_date: 03/28/2018
    })
post_7 = Post.create({
      contact: "zzz@zzz.com",
      p_ref_fee: 120,
      ratio_me: 40,
      exp_date: "12/15/2018"
    })
post_8 = Post.create({
      contact: "pp@pp.com",
      p_ref_fee: 150,
      ratio_me: 100,
      exp_date: "06/25/2018"
    })
post_9 = Post.create({
      contact: "sj@jj.com",
      p_ref_fee: 150,
      ratio_me: 80,
      exp_date: "04/19/2018"
    })
post_10 = Post.create({
      contact: "(310)-115-1111",
      p_ref_fee: 280,
      ratio_me: 140,
      exp_date: "06/28/2018"
    })
post_11 = Post.create({
      contact: "(310)-205-1111",
      p_ref_fee: 300,
      ratio_me: 150,
      exp_date: "02/25/2018"
    })
post_12 = Post.create({
      contact: "ow@aa.com",
      p_ref_fee: 300,
      ratio_me: 180,
      exp_date: "11/23/2019"
    })
post_13 = Post.create({
      contact: "(310)-205-1111",
      p_ref_fee: 120,
      ratio_me: 50,
      exp_date: "12/17/2018"
    })
post_14 = Post.create({
      contact: "Jane@Wie.com",
      p_ref_fee: 10,
      ratio_me: 5,
      exp_date: "09/12/2017"
    })
post_15 = Post.create({
      contact: "Griddle@Meat.com",
      p_ref_fee: 10,
      ratio_me: 9,
      exp_date: "07/15/2018"
    })

user_1.post << post_1
user_2.post << post_2
user_3.post << post_3
user_4.post << post_4
user_5.post << post_5
user_1.post << post_6
user_2.post << post_7
user_3.post << post_8
user_4.post << post_9
user_5.post << post_10
user_1.post << post_11
user_2.post << post_12
user_3.post << post_13
user_4.post << post_14
user_5.post << post_15

apartment_1.post << post_1
apartment_1.post << post_2
apartment_1.post << post_3
apartment_2.post << post_4
apartment_2.post << post_5
apartment_3.post << post_6
apartment_3.post << post_7
apartment_4.post << post_8
apartment_4.post << post_9
apartment_5.post << post_10
apartment_6.post << post_11
apartment_6.post << post_12
apartment_7.post << post_13
apartment_8.post << post_14
apartment_9.post << post_15


  p "Seed data populated!"
