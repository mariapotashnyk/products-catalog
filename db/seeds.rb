# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 100.times do |i|
#   Product.create({name: "Product #{i}", description: "Best product #{i} for everyone!", price: "#{i}.99"})
# end


query = "INSERT INTO products (name, description, price) VALUES\n"

100.times do |i|
  query << "(\'Product #{i}\', \'Best product #{i} for everyone!\', #{i}.99),\n"
end

query.chomp!(",\n")
query << ';'

ActiveRecord::Base.connection.execute(query)

#
# Product.create([{name: 'product 1', description: 'Best product for everyone!', price: '9.99'},
#                 {name: 'product 2', description: 'Best product for everyone!', price: '99.9'}])