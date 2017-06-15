# README

project-03- Referral - https://murmuring-waters-54697.herokuapp.com/

Users who are trying to move in and currently living in can have free money from the apartment.(referral fee)<br />
The people who are currently living in an apartment will post their information with how much he/she is willing to split money with people who are coming in. When user log in, they will be able to search the apartment and see the deal.


## Technologies Used

jQuery<br />
HTML<br />
CSS<br />
rails 5.1.1<br />
ruby 2.4.0<br />
gem 'bootstrap-sass' - for bootstrap<br />
gem ‘devise’ - user authentication<br />
gem 'geocoder' - to convert address to coordinates<br />
gem 'gmaps4rails' - allows us to use google maps api<br />


## List of installation steps
//create new rails app no testing and use postgresql as database<br />
rails new app -T -d postgresql<br />
//create database<br />
rails db:create<br />
//after creating models,<br />
rails db:migrate<br />


## Link to User stories, wireframes and entity relationship diagrams

- https://trello.com/b/D2x25So9


## unsolved problems or future features

Email confirmation for sign up (devise)<br />
Sorting button such as descending order with price(referral price)<br />
Validate error message in form<br />
CSS
