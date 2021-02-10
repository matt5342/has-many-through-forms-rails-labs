# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Category.destroy_all
Post.destroy_all
User.destroy_all

post1 = Post.create(title: "Feeling Groovy", content: "I'm feeling so groovy")
user1 = User.create(username: 'CoolGuy5')
comment3 = Comment.create(content: "And another thing, how come there aren't any vegetabls at the movie theater...", user: user1, post: post1)
category1 = Category.create(name: 'Cool')
post1.categories << category1
@category = Category.create(name: "Lame")
      @post = Post.create(title: "So Awesome", content: "Man am I a great blogger OR WHAT!")
      @post.categories << @category
      @user = User.create(username: 'RealBigFish')
      @comment1 = Comment.create(content: "This was great!", user: @user, post: @post)
      @comment2 = Comment.create(content: "And another thing, how come there aren't any vegetabls at the movie theater...", user: @user, post: @post)
