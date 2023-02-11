# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')

first_post = Post.create(author: first_user, title: 'Hello', text: 'This is my first post')
second_post = Post.create(author: first_user, title: 'sami', text: 'This is my second post')
third_post = Post.create(author: first_user, title: 'How are', text: 'This is my third post')
four_post = Post.create(author: first_user, title: 'you', text: 'This is my four post')

Comment.create(posts_id: first_post, author: first_user, text: 'Hi This is my first post on ruby on rails!' )
Comment.create(posts_id: third_post, author: first_user, text: 'Hi, Sami how are you?' )
Comment.create(posts_id: second_post, author: first_user, text: 'Hi I Hope you will be great' )
Comment.create(posts_id: first_post, author: first_user, text: 'Hi You create awesome portfolio' )
Comment.create(posts_id: four_post, author: first_user, text: 'Hi This is my First rails project!' )
Comment.create(posts_id: third_post, author: first_user, text: 'Thanks for everything' )


