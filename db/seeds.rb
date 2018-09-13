Developer.destroy_all
Customer.destroy_all
Language.destroy_all
ProjectLanguage.destroy_all
Project.destroy_all
Review.destroy_all

p "Making devs"
Developer.create!(name: "Marissa Orea", email: "marissa@gmail.com", title: "FullStack Developer", description: Faker::MostInterestingManInTheWorld.quote, location: "NYC", password: "google", image_link:"marissa.png")
Developer.create!(name: "Yan Wang", email: Faker::Internet.unique.email, title: "FullStack Developer", description: Faker::MostInterestingManInTheWorld.quote, location: "NYC", password: "google", image_link:"yan.png")
Developer.create!(name: "Justin Wang", email: "jwang@aol.com", title: "FullStack Developer", description: Faker::MostInterestingManInTheWorld.quote, location: "NYC", password: "google", image_link:"justin.png")
Developer.create!(name: "Maddie Tabing", email: Faker::Internet.unique.email, title: "Sr.FullStack Developer", description: Faker::MostInterestingManInTheWorld.quote, location: "LA", password: "google", image_link:"maddie.png")
Developer.create!(name: "Forrest Benton", email: "fbenton@aol.com", title: "FullStack Developer", description: Faker::MostInterestingManInTheWorld.quote, location: "NYC", password: "google", image_link:"forrest.png")
Developer.create!(name: "Kritina Tong", email: Faker::Internet.unique.email, title: "FullStack Developer", description: Faker::MostInterestingManInTheWorld.quote, location: "LA", password: "google", image_link:"kristina.png")
Developer.create!(name: "Arielle Ramirez", email: Faker::Internet.unique.email, title: "FullStack Developer", description: Faker::MostInterestingManInTheWorld.quote, location: "Chicago", password: "google", image_link:"arielle.png")
Developer.create!(name: "Olivia Tian", email: Faker::Internet.unique.email, title: "FullStack Developer", description: Faker::MostInterestingManInTheWorld.quote, location: "Chicago", password: "google", image_link:"olivia.png")
Developer.create!(name: "Jun Jian Shen", email: Faker::Internet.unique.email, title: "Sr.FullStack Developer", description: Faker::MostInterestingManInTheWorld.quote, location: "NYC", password: "google", image_link:"jun.png")
Developer.create!(name: "Brian Wadlow", email: Faker::Internet.unique.email, title: "Sr. FullStack Developer", description: Faker::MostInterestingManInTheWorld.quote, location: "Chicago", password: "google", image_link:"brian.png")
Developer.create!(name: "Yichen Jin", email: Faker::Internet.unique.email, title: "FullStack Developer", description: Faker::MostInterestingManInTheWorld.quote, location: "Chicago", password: "google", image_link:"yichen.png")
Developer.create!(name: "Andrew Linder", email: "alinder@aol.com", title: "FullStack Developer", description: Faker::MostInterestingManInTheWorld.quote, location: "Miami", password: "google", image_link:"andrew2.png")
Developer.create!(name: "Evans Wang", email: Faker::Internet.unique.email, title: "FullStack Developer", description: Faker::MostInterestingManInTheWorld.quote, location: "Miami", password: "google", image_link:"evans.png")
Developer.create!(name: "Garry Clerge", email: Faker::Internet.unique.email, title: "Scary Garry", description: Faker::MostInterestingManInTheWorld.quote, location: "Miami", password: "google", image_link:"garry.png")
Developer.create!(name: "Jesse McReady", email: "jesse@aol.com", title: "FullStack Developer", description: Faker::MostInterestingManInTheWorld.quote, location: "NYC", password: "google", image_link:"jesse.png")
Developer.create!(name: "Johnny Soong", email: "fbenton@splat.com", title: "Splat Code Expert", description: Faker::MostInterestingManInTheWorld.quote, location: "NYC", password: "google", image_link:"johnny.png")
Developer.create!(name: "Jon Mines", email: Faker::Internet.unique.email, title: "FullStack Developer", description: Faker::MostInterestingManInTheWorld.quote, location: "Miami", password: "google", image_link:"jon/.png")
Developer.create!(name: "Lila Wang", email: Faker::Internet.unique.email, title: "FullStack Developer", description: Faker::MostInterestingManInTheWorld.quote, location: "NYC", password: "google", image_link:"lila.png")
Developer.create!(name: "Michael Coleman", email: Faker::Internet.unique.email, title: "FullStack Developer", description: Faker::MostInterestingManInTheWorld.quote, location: "NYC", password: "google", image_link:"michael.png")
Developer.create!(name: "Parker Dinsmore", email: Faker::Internet.unique.email, title: "FullStack Developer", description: Faker::MostInterestingManInTheWorld.quote, location: "LA", password: "google", image_link:"parker.png")
Developer.create!(name: "Richard Chen", email: Faker::Internet.unique.email, title: "FullStack Developer", description: Faker::MostInterestingManInTheWorld.quote, location: "NYC", password: "google", image_link:"richard.png")
Developer.create!(name: "Andrew Cohn", email: Faker::Internet.unique.email, title: "FullStack Developer", description: Faker::MostInterestingManInTheWorld.quote, location: "NYC", password: "google", image_link:"andrew1.png")
p "Done with devs"

p "Making customers"
20.times do
  Customer.create!(name: Faker::Name.name, email: Faker::Internet.unique.email, password: "google", image_link: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png")
end
p "Done with customers"

p "Making projects with customers"
30.times do
  Project.create!(title: Faker::SiliconValley.company, description: Faker::SiliconValley.motto, developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
end
p "Done making projects with customers"

p "Making projects without customers"
30.times do
  Project.create!(title: Faker::SiliconValley.company, description: Faker::SiliconValley.motto, developer: Developer.all.sample, price: rand(200..3000))
end
p "Done making projects without customers"

p "Making projects without developers"
30.times do
  Project.create!(title: Faker::SiliconValley.company, description: Faker::SiliconValley.motto, customer: Customer.all.sample, price: rand(200..3000))
end
p "Done making projects without customers"

p "Making reviews"
projects = Project.where.not(customer_id: nil)
projects.each do |project|
  Review.create(content: Faker::Movie.quote, rating: rand(1..5), project: project)
end
p "Done with reviews"

p "Making Languages"
Language.create!(name: "Ruby")
Language.create!(name: "Swift")
Language.create!(name: "JavaScript")
Language.create!(name: "Java")
Language.create!(name: "Python")
Language.create!(name: "C++")
Language.create!(name: "C")
Language.create!(name: "Objective C")
Language.create!(name: "Scala")
Language.create!(name: "Perl")
p "done with languages"

p "Making project_langauges"
Project.all.each do |project|
  # byebug
  num = rand(0...9)
  ProjectLanguage.create!(project: project, language: Language.all[num])
  ProjectLanguage.create!(project: project, language: Language.all[num+1])
end
p "done with project_langauges"
