# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.create(name: 'Action')
Category.create(name: 'Romance')
Category.create(name: 'Comedy')
Category.create(name: 'Horror')

User.create(username: "Super", email: "super@gmail.com", password: "123456")
User.create(username: "Heber", email: "heber@gmail.com", password: "123456")
User.create(username: "Juan", email: "juan@gmail.com", password: "123456")
User.create(username: "Lazo", email: "lazo@gmail.com", password: "123456")
User.create(username: "Benza", email: "benza@gmail.com", password: "123456")

Article.create(
    user_id:2,
    category_id: 1,
    title: "Transformers", 
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a mi ligula. Praesent eleifend orci at nulla ullamcorper, vel placerat enim sollicitudin. Suspendisse ut lorem faucibus, elementum magna id, pharetra.",
    image: File.new(Rails.root.join('app', 'assets', 'images', 'action.jpg'))
  )

Article.create(
    user_id:3,
    category_id: 2,
    title: "Transformers", 
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a mi ligula. Praesent eleifend orci at nulla ullamcorper, vel placerat enim sollicitudin. Suspendisse ut lorem faucibus, elementum magna id, pharetra.",
    image: File.new(Rails.root.join('app', 'assets', 'images', 'romance.jpg'))
  )

  Article.create(
    user_id:4,
    category_id: 3,
    title: "Transformers", 
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a mi ligula. Praesent eleifend orci at nulla ullamcorper, vel placerat enim sollicitudin. Suspendisse ut lorem faucibus, elementum magna id, pharetra.",
    image: File.new(Rails.root.join('app', 'assets', 'images', 'comedy.jpg'))
  )

  Article.create(
    user_id: 5,
    category_id: 5,
    title: "Transformers", 
    body: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a mi ligula. Praesent eleifend orci at nulla ullamcorper, vel placerat enim sollicitudin. Suspendisse ut lorem faucibus, elementum magna id, pharetra.",
    image: File.new(Rails.root.join('app', 'assets', 'images', 'horror.jpg'))
  )



