require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

@total_revenue = Store.sum(:annual_revenue)
@store_count = Store.count
@average_revenue = @total_revenue / @store_count
@big_revenue = Store.where('annual_revenue > 1000000').count

puts "Total annual revenue: #{@total_revenue}"
puts "Average annual revenue: #{@average_revenue}"
puts "Number of store with over $1M in annual revenue: #{@big_revenue}"

=begin

  CREATE TABLE "stores" ("id" serial primary key, "name" character varying, "annual_revenue" integer, "mens_apparel" boolean, "womens_apparel" boolean, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL) 

  CREATE TABLE "employees" ("id" serial primary key, "store_id" integer, "first_name" character varying, "last_name" character varying, "hourly_rate" integer, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL) 

=end