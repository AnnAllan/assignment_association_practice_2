# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#-----Destroy previous records-----
puts "Destroying old records..."
Comment.destroy_all
Post.destroy_all
Category.destroy_all
Tag.destroy_all
User.destroy_all
puts "Old records destroyed."

#-----Create Objects-----
# 10 Users
10.times do
  User.create(name: Faker::DrWho.unique.character)
end
# 5 Catgories
5.times do
  Category.create(name: Faker::HarryPotter.unique.character)
end
# 5 Tags
5.times do
  Tag.create(name: Faker::LordOfTheRings.character)
end
# 5 Posts per User, 3 comments and 3 tags per Post
User.find_each do |user|
  5.times do
    post = user.posts.create(title: Faker::StarWars.planet,
                             body: Faker::StarWars.quote,
                             category: Category.all.sample)
    3.times do
      post.comments.create(body: Faker::StarWars.wookie_sentence)
      post.tag.create(tag: Tag.all.sample)
    end
  end
end
puts "New records created!"
