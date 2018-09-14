Developer.destroy_all
Customer.destroy_all
Language.destroy_all
ProjectLanguage.destroy_all
Project.destroy_all
Review.destroy_all

p "Making devs"
Developer.create!(name: "Marissa Orea", email: "marissa@gmail.com", title: "Full Stack Developer", description: "I am a Full Stack developer with a background in System Administration - I love building meaningful apps and features!", location: "NYC", password: "google", image_link: "marissa.png")
Developer.create!(name: "Yan Wang", email: Faker::Internet.unique.email, title: "Full Stack Developer", description: "I have a background in Marketing and Communications prior to Software Engineering. I also love photography!", location: "NYC", password: "google", image_link: "yan.png")
Developer.create!(name: "Justin Wang", email: "jwang@aol.com", title: "Full Stack Developer", description: "I have an aol email address for spam emails. I prefer Backend code over Frontend #codeallthethings.", location: "NYC", password: "google", image_link: "justin.png")
Developer.create!(name: "Maddie Tabing", email: Faker::Internet.unique.email, title: "Sr.Full Stack Developer", description: "I have a background in Public Relations prior to being a Software Engineer.", location: "Los Angeles", password: "google", image_link: "maddie.png")
Developer.create!(name: "Forrest Benton", email: "fbenton@aol.com", title: "Full Stack Developer", description: "I have a background in law and love what I do now, which is code all the things and being a kick ass developer.", location: "NYC", password: "google", image_link: "forrest.png")
Developer.create!(name: "Kritina Tong", email: Faker::Internet.unique.email, title: "Full Stack Developer", description: "I have an IT background prior to being a Software Engineer. I am committed to building meaningful software!", location: "Los Angeles", password: "google", image_link: "kristina.png")
Developer.create!(name: "Arielle Ramirez", email: Faker::Internet.unique.email, title: "Full Stack Developer", description: "I am a Full Stack engineer, committed to code beautiful applications for my clients.", location: "Chicago", password: "google", image_link: "arielle.png")
Developer.create!(name: "Olivia Tian", email: Faker::Internet.unique.email, title: "Full Stack Developer", description: "I have a background in Accounting prior to being a Rails Engineer.", location: "Chicago", password: "google", image_link: "olivia.png")
Developer.create!(name: "Jun Jian Shen", email: Faker::Internet.unique.email, title: "Sr.Full Stack Developer", description: "I love coding, it's my passion, but most of all I love building meaningful apps and features.", location: "NYC", password: "google", image_link: "jun.png")
Developer.create!(name: "Brian Wadlow", email: Faker::Internet.unique.email, title: "Sr. Full Stack Developer", description: "I am a Full Stack Engineer with a background in Media.", location: "Chicago", password: "google", image_link: "brian.png")
Developer.create!(name: "Yichen Jin", email: Faker::Internet.unique.email, title: "Full Stack Developer", description: "I am a Full Stack Engineer with specializing in Rails and more! (coming soon)", location: "Chicago", password: "google", image_link: "yichen.png" )
Developer.create!(name: "Andrew Linder", email: "alinder@aol.com", title: "Full Stack Developer", description: "I worked as a trader at an investment bank for 3 years. I am now a Rails Engineer.", location: "Miami", password: "google", image_link: "andrew2")
Developer.create!(name: "Evans Wang", email: Faker::Internet.unique.email, title: "Full Stack Developer", description: "I taught underpriviledged high school students how to code and also teach at university a Leadership course. I teach budding Engineers at Flatiron school and so much more cool stuff because I am just an OG.", location: "Miami", password: "google", image_link:"evans.png")
Developer.create!(name: "Garry Clerge", email: Faker::Internet.unique.email, title: "Scary Garry", description: "People know me by Gearr Bear (or do they?), I teach budding Engineers! I also build beautiful apps.", location: "Miami", password: "google", image_link:"garry.png")
Developer.create!(name: "Jesse McReady", email: "jesse@aol.com", title: "Full Stack Developer", description: "I have a computer science degree and am now a Software Engineer. I love challenges, the quality of my works speaks for itself.", location: "NYC", password: "google", image_link: "jesse.png")
Developer.create!(name: "Johnny Soong", email: "johnny.soong@splat.com", title: "Splat Code Expert", description: "I am an Engineer and a huge believer in using Splat(*) in Ruby code, you just never know how many arguments in methods you'll need, better to be safe than sorry. Rspec The Wealth is my motto.", location: "NYC", password: "google", image_link:"johnny.png")
Developer.create!(name: "Jon Mines", email: Faker::Internet.unique.email, title: "Full Stack Developer", description: "I am an instructor for budding Engineers. Additionally, I build beautiful interactive web applications.", location: "Miami", password: "google", image_link:"jon/.png")
Developer.create!(name: "Lila Wang", email: Faker::Internet.unique.email, title: "Full Stack Developer", description: "I am a Full Stack Engineer with the patience of a Goddess, Lila is my name and Rails Engineer is my game.", location: "NYC", password: "google", image_link:"lila.png")
Developer.create!(name: "Michael Coleman", email: Faker::Internet.unique.email, title: "Full Stack Developer", description: "I am a Full Stack Engineer with a background in Finance for a startup company called Betterment", location: "Brooklyn", password: "google", image_link:"michael.png")
Developer.create!(name: "Parker Dinsmore", email: Faker::Internet.unique.email, title: "Full Stack Developer", description: "Prior to being a Full Stack Engineer, Prior to starting a new career path in coding I worked as an auditor.", location: "LA", password: "google", image_link:"parker.png")
Developer.create!(name: "Richard Chen", email: Faker::Internet.unique.email, title: "Full Stack Developer", description: "I am a Full Stack Engineer, prior to coding, I've managed in retail for many years. I love building efficient web applications.", location: "NYC", password: "google", image_link:"richard.png")
Developer.create!(name: "Andrew Cohn", email: Faker::Internet.unique.email, title: "Full Stack Developer", description: "I have a Film background prior to Software Engineering.", location: "NYC", password: "google", image_link:"andrew1.png")
p "done making devs"

p "Making customers"
20.times do
  Customer.create!(name: Faker::Name.name, email: Faker::Internet.unique.email, password: "google", image_link: "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png")
end
p "Done with customers"

p "Making projects with customers"
  Project.create!(title: "Machine Learning App", description: "Interactive Machine learning web app", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Shopify store with custom functions", description: "Implementing Shopify online store", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Color Guessing Game", description: "Interactive website built on javascript", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Tool to Trade on Bitmex", description: "Interactive website with encrpyting features.", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "NGINX RTMP Module", description: "Analytics DevOps Web application", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Slack", description: "Slack messaging web application with security features", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Project Soli", description: "Intractive website that assists people with disabilities.", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Project Ara", description: "Interactive website that assists students with their homework.", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Chrome Developer Submit", description: "Chrome developer tool", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Ali Express", description: "Marketplace for online shopping", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Ebay", description: "Online auction marketplace", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Etsy", description: "Marketplace for artisans to sell.", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "DevSpace", description: "Web templates for beginner front end developers", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Exterium", description: "Interactive web tool for space educxation", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Google I/O", description: "Interactive web tool for Google I/O", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Medium", description: "Online blog platform", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Xanga", description: "Online blog platform", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Money Tracker", description: "Web app that tracks user's expenses", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Grocery Tracker", description: "Web App that tracks user's grocery list", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Pokedex", description: "Web app that displays information on various pokemon", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Progressive Beer", description: "Web app that displays on maps local brewery's", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Tinder", description: "Online dating app", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Facebook", description: "Social media platform", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Twitter-bot", description: "Social media platform bot", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Uber Web", description: "Web interface that shows the nearest uber drivers by users location", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Js Features", description: "JS repository for frontend development", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Voice Memo Tool", description: "Web Application with a voice recognition tool", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Weneed", description: "Fundraising web application tool", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Code4Girls", description: "Interactive website for computer science education", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Intersection Web App", description: "Web application for MTA subway monitoring", developer: Developer.all.sample, customer: Customer.all.sample, price: rand(200..3000))
p "Done making projects with customers"

p "Making projects without customers"
  Project.create!(title: "Machine Learning App", description: "Interactive Machine learning web app", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Shopify store with custom functions", description: "Implementing Shopify online store", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Color Guessing Game", description: "Interactive website built on javascript", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Tool to Trade on Bitmex", description: "Interactive website with encrpyting features.", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "NGINX RTMP Module", description: "Analytics DevOps Web application", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Slack", description: "Slack messaging web application with security features", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Chrome Developer Submit", description: "Chrome developer tool", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Ali Express", description: "Marketplace for online shopping", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Ebay", description: "Online auction marketplace", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Etsy", description: "Marketplace for artisans to sell.", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "DevSpace", description: "Web templates for beginner front end developers", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Exterium", description: "Interactive web tool for space education", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Google I/O", description: "Interactive web tool for Google I/O", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Medium", description: "Online blog platform", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Xanga", description: "Online blog platform", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Money Tracker", description: "Web app that tracks user's expenses", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Grocery Tracker", description: "Web App that tracks user's grocery list", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Pokedex", description: "Web app that displays information on various pokemon", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Progressive Beer", description: "Web app that displays on maps local brewery's", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Tinder", description: "Online dating app", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Facebook", description: "Social media platform", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Twitter-bot", description: "Social media platform", price: rand(200..3000))
  Project.create!(title: "Uber Web", description: "Web interface that shows the nearest uber drivers by users location", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Js Features", description: "JS repository for frontend development", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Voice Memo Tool", description: "Web Application with a voice recognition tool", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Weneed", description: "Fundraising web application tool", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Code4Girls", description: "Interactive website for computer science education", developer: Developer.all.sample, price: rand(200..3000))
  Project.create!(title: "Intersection Web App", description: "Web application for MTA subway monitoring", developer: Developer.all.sample, price: rand(200..3000))
p "Done making projects without customers"

p "Making projects without developers"
  Project.create!(title: "Food Delivery Website", description: "We need a web platform and mobile apps for our online kitchen company.", customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Code Convert from Ruby to Python", description: "We need an expert to help us convert our website to Python.", customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Flappy Bird Interactive game", description: "I need a developer that can build an idea I have for a game.", customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Slowstagram", description: "I need a developer that can build our social media idea into a mobile app!", customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Help with my Java homework!", description: "I need a developer that can help me complete my java project.", customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Dog Walking app", description: "I need an app that can help me monitor my 5 dogs for my dog walker and I to use.", customer: Customer.all.sample, price: rand(200..3000))
  Project.create!(title: "Trader of the Joe's website", description: "The Trader Jims, Inc., needs a developer to build a food shopping online store app.", customer: Customer.all.sample, price: rand(200..3000))
p "Done making projects without developers"

p "Making reviews"
projects = Project.where.not(customer_id: nil)
projects.each do |project|
  Review.create(content: Faker::Company.bs.capitalize, rating: rand(1..5), project: project)

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
