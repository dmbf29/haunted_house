Monster.destroy_all
SpookyHouse.destroy_all


mj = SpookyHouse.create!(
  name: "Michael Jackson's Apt",
  banner_url: "https://www.settled.co.uk/sites/default/files/styles/blog_background/public/halloween-decorations-parents-house-christine-mcconnell-1_0.jpg?itok=L01AcK59"
)


Monster.create!(
  name: "The Ghost of Biggie Smalls",
  catch_phrase: "If you don't know, now you know.",
  image_url: "https://media.pri.org/s3fs-public/styles/story_main/public/photos/2013-March/notorious_biggie_smalls_cartoon_wax.jpg?itok=KtumurXo",
  spooky_house: mj
)


Monster.create!(
  name: "The Ghost of Old Dirty Bastard",
  catch_phrase: "Baby, I got your money",
  image_url: "https://thesource.com/wp-content/uploads/2018/11/oldirtybastard.jpg",
  spooky_house: mj
)

