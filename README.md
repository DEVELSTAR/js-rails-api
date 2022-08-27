# README

config/initializers/cors.rb == uncomment 
gem rack-cors == uncomment

---to generate model
rails g resource Author name
rails g resource Book title publisher publish_date page_count:integer author:belongs_to
rails db:migrate
index action
gem 'fast_jsonapi' (it is faster than active model serializer)
in client_side folder make two files index.html, index.js



see everything 
https://github.com/aisayo/js_rails_api/