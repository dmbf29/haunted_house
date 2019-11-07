Monster.destroy_all
SpookyHouse.destroy_all


mj = SpookyHouse.create!(
  name: "Michael Jackson's Apt",
  banner_url: "https://www.settled.co.uk/sites/default/files/styles/blog_background/public/halloween-decorations-parents-house-christine-mcconnell-1_0.jpg?itok=L01AcK59"
)


Monster.create!(
  name: "The Ghost of Biggie",
  catch_phrase: "If you don't know, now you know.",
  image_url: "https://www.billboard.com/files/styles/article_main_image/public/media/notorious-big-jan-18-billboard-1548.jpg",
  spooky_house: mj
)


Monster.create!(
  name: "The Ghost of Tupac",
  catch_phrase: "I see no changes.",
  image_url: "https://images.theconversation.com/files/9902/original/qfmd5yxw-1335239136.jpg?ixlib=rb-1.1.0&rect=5%2C181%2C606%2C314&q=45&auto=format&w=926&fit=clip",
  spooky_house: mj
)

Monster.create!(
  name: "The Ghost of Old Dirty Bastard",
  catch_phrase: "Baby, I got your money",
  image_url: "https://thesource.com/wp-content/uploads/2018/11/oldirtybastard.jpg",
  spooky_house: mj
)

puts "creating weaknesses..."
weaknesses = ['holy water', 'garlic', 'silver bullets', 'sun', 'the man', 'jesus', 'joon']
weaknesses.each do |weakness_name|
  Weakness.where(
    name: weakness_name
  ).first_or_create!
end
puts "...finished. Created: #{Weakness.count}"






