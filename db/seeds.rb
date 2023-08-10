# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(name: "First user", surname: "seed", email: "new@new.com", password: "123456", created_at: Date.new, updated_at: Date.new)

Product.create(name: "First product good", description: "this prodcut is good", price: 1, user_id: 1)
Product.create(name: "First product bad", description: "this prodcut is bad", price: 1, user_id: 1)
Product.create(name: "Second product good", description: "this prodcut is good", price: 1, user_id: 1)
Product.create(name: "Second product bad", description: "this prodcut is bad", price: 1, user_id: 1)
Product.create(name: "Third product good", description: "this prodcut is good", price: 1, user_id: 1)
Product.create(name: "Third product bad", description: "this prodcut is bad", price: 1, user_id: 1)
