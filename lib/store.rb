class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 2 }
  validates :annual_revenue, numericality: {
    only_integer: true,
    greater_than_or_equal_to: 0
  }
  validate :must_have_men_or_women
  
  def must_have_men_or_women
    if !womens_apparel && !mens_apparel
      errors.add(:womens_apparel, "must be true if men's apparel is false")
      errors.add(:mens_apparel, "must be true if women's apparel is false")
    end
  end

end

=begin
  CREATE TABLE "stores" ("id" serial primary key, "name" character varying, "annual_revenue" integer, "mens_apparel" boolean, "womens_apparel" boolean, "created_at" timestamp NOT NULL, "updated_at" timestamp NOT NULL) 
=end