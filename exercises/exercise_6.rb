require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 2 }
end

class Employees < ActiveRecord::Base
  belongs_to :store
  validates :first_name, :last_name, :store_id, presence: true
  # validates :hourly_rate, numericality: { in: 40..200 } doesn't work
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Rob", last_name: "Bob", hourly_rate: 0)
@store2.employees.create(first_name: "Larry", last_name: "Lobster", hourly_rate: 100)
