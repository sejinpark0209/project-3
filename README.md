# README

project-03- Referral - https://murmuring-waters-54697.herokuapp.com/

Users who are trying to move in and currently living in can have free money from the apartment.(referral fee)
The people who are currently living in an apartment will post their information with how much he/she is willing to split money with people who are coming in. When user log in, they will be able to search the apartment and see the deal.


## Technologies Used

jQuery
HTML
CSS
rails 5.1.1
ruby 2.4.0
gem 'bootstrap-sass' - for bootstrap
gem ‘devise’ - user authentication
gem 'geocoder' - to convert address to coordinates
gem 'gmaps4rails' - allows us to use google maps api


## List of installation steps
//create new rails app no testing and use postgresql as database
rails new app -T -d postgresql
//create database
rails db:create
//after creating models,
rails db:migrate


## Link to User stories, wireframes and entity relationship diagrams

- https://trello.com/b/D2x25So9


## unsolved problems or future features

Email confirmation for sign up (devise)
Sorting button such as descending order with price(referral price)
Validate error message in form
CSS
