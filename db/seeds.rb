# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
action = Category.create(name: 'Action')
romance = Category.create(name: 'Romance')
comedy = Category.create(name: 'Comedy')
horror = Category.create(name: 'Horror')

admin = User.create(username: "Super", email: "super@gmail.com", password: "123456")
heber = User.create(name: "Heber", email: "heber@gmail.com", password: "123456")
juan = User.create(name: "Juan", email: "juan@gmail.com", password: "123456")
lazo = User.create(name: "Lazo", email: "lazo@gmail.com", password: "123456")
benza = User.create(name: "Benza", email: "benza@gmail.com", password: "123456")

action.articles.create(
    author_id:2, 
    title: "Transformers", 
    text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a mi ligula. Praesent eleifend orci at nulla ullamcorper, vel placerat enim sollicitudin. Suspendisse ut lorem faucibus, elementum magna id, pharetra.",
    image_url: 'rescue.jpg'
  
  )


romance.articles.create(
    author_id:3, 
    title: "Transformers", 
    text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a mi ligula. Praesent eleifend orci at nulla ullamcorper, vel placerat enim sollicitudin. Suspendisse ut lorem faucibus, elementum magna id, pharetra.",
    image_url: 'rescue.jpg'
  
  )


comedy.articles.create(
    author_id:4, 
    title: "Transformers", 
    text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a mi ligula. Praesent eleifend orci at nulla ullamcorper, vel placerat enim sollicitudin. Suspendisse ut lorem faucibus, elementum magna id, pharetra.",
    image_url: 'rescue.jpg'
  
  )


  horror.articles.create(
    author_id:5, 
    title: "Transformers", 
    text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed a mi ligula. Praesent eleifend orci at nulla ullamcorper, vel placerat enim sollicitudin. Suspendisse ut lorem faucibus, elementum magna id, pharetra.",
    image_url: 'rescue.jpg'
  
  )


  vote1 = Vote.create!(
    user_id: 2,
    article_id: 1,
    category_id: 1
  )