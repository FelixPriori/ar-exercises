require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

# Your code goes here ...

store4 = Store.create(
  name: "Surrey",
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true,
)

store5 = Store.create(
  name: "Whistler",
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false,
)

store6 = Store.create(
  name: "Yaletown",
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: true,
)

@mens_stores = Store.where(mens_apparel: true);

puts "Men's stores:"
@mens_stores.each do |s|
  puts "#{s.name}, #{s.annual_revenue}"
end

@womens_stores = Store.where('annual_revenue < 1000000').where(womens_apparel: true)

puts "Women's stores:"
@womens_stores.each do |s|
  puts "#{s.name}, #{s.annual_revenue}"
end

=begin

  CREATE TABLE "stores" ("id" serial primary key, "name" character varying, "annual_revenue" integer, "mens_apparel" boolean, "womens_apparel" boolean, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL) 

  CREATE TABLE "employees" ("id" serial primary key, "store_id" integer, "first_name" character varying, "last_name" character varying, "hourly_rate" integer, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL) 

=end