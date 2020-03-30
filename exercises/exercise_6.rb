require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...

@store1.employees.create(first_name: "Bob", last_name: "Bobby", hourly_rate: 60)
@store1.employees.create(first_name: "Shell", last_name: "Shelly", hourly_rate: 45)
@store1.employees.create(first_name: "Tod", last_name: "Toddy", hourly_rate: 30)
@store1.employees.create(first_name: "Tam", last_name: "Tammy", hourly_rate: 15)
@store1.employees.create(first_name: "Pat", last_name: "Patty", hourly_rate: 60)
@store1.employees.create(first_name: "Fan", last_name: "Fanny", hourly_rate: 30)
@store2.employees.create(first_name: "Ann", last_name: "Anny", hourly_rate: 45)
@store2.employees.create(first_name: "Barn", last_name: "Barney", hourly_rate: 30)
@store2.employees.create(first_name: "Ben", last_name: "Benny", hourly_rate: 45)
@store2.employees.create(first_name: "Cloon", last_name: "Cloony", hourly_rate: 15)
@store2.employees.create(first_name: "Jen", last_name: "Jenny", hourly_rate: 60)
@store2.employees.create(first_name: "Jeff", last_name: "Jeffrey", hourly_rate: 15)


=begin

  CREATE TABLE "stores" ("id" serial primary key, "name" character varying, "annual_revenue" integer, "mens_apparel" boolean, "womens_apparel" boolean, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL) 

  CREATE TABLE "employees" ("id" serial primary key, "store_id" integer, "first_name" character varying, "last_name" character varying, "hourly_rate" integer, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL) 

=end