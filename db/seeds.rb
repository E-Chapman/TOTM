# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
PeriodDaySymptom.destroy_all
PhysicalSymptom.destroy_all
Mood.destroy_all
Flow.destroy_all
puts "Destroying Users..."
Period.destroy_all
User.destroy_all

puts "Welcoming users..."

[
  { email: 'yulin@me.com', password: 'P@ssword1' },
  { email: 'ruqiya@me.com', password: 'P@ssword1' },
  { email: 'tristan@me.com', password: 'P@ssword1' },
  { email: 'lucy@me.com', password: 'P@ssword1' },
  { email: 'elizabeth@me.com', password: 'P@ssword1' }
].each do |user_data| # Iterate over each set of user data...
  # ...create a user with each set of data...
  User.create!(user_data)
  # If we reach this line, the user was created (otherwise an exception will have been raised),
  # therefore no need to save the user in to a variable for putsing data to the terminal.
  puts "User with email: #{user_data['email']} successfully created!"
end

puts "Creating Physical symptoms"

physical_symptoms = [
  { name: "Back Pain", emoji: "๐โโ๏ธ" },
  { name: "Bloating", emoji: "๐" },
  { name: "Gas", emoji: "๐จ" },
  { name: "Headaches", emoji: "๐โโ๏ธ" },
  { name: "Tender Breasts", emoji: "๐บ" },
  { name: "Diarrhoea", emoji: "๐งป" },
  { name: "Constipation", emoji: "๐ฉ" },
  { name: "Fever", emoji: "๐ฅ" },
  { name: "Cramps", emoji: "๐ฉ" },
  { name: "Craving", emoji: "๐ซ" },
  { name: "Insomnia", emoji: "๐ " },
  { name: "Irritabilty", emoji: "๐ฃ" },
  { name: "Migrane", emoji: "๐ฅ" },
  { name: "Stress", emoji: "๐ข" },
  { name: "Weight Gain", emoji: "โ" },
  { name: "Nausea", emoji: "๐คฎ" },
  { name: "Acne", emoji: "๐" },
  { name: "Tummy Ache", emoji: "๐โโ๏ธ" },
  { name: "Fatigue", emoji: "๐ฎโ๐จ" },
  { name: "Perineum Pain", emoji: "โก๏ธ" },
  { name: "Swelling", emoji: "๐ฆต" }
]

physical_symptoms.each do |attributes|
  puts attributes
  symptoms = PhysicalSymptom.create!(attributes)
  puts "Created #{symptoms.name}"
end

puts "Finished!"

puts "Creating Moods"

mood = [
  { name: "Happy", emoji: "๐" },
  { name: "Fantastic!", emoji: "๐คฉ" },
  { name: "Good", emoji: "๐" },
  { name: "Energised", emoji: "๐ซ" },
  { name: "Meh", emoji: "๐" },
  { name: "Duvet Day", emoji: "๐ซฃ" },
  { name: "Irritable", emoji: "๐ " },
  { name: "Beep Off", emoji: "๐คฌ" },
  { name: "Frisky", emoji: "๐ซฆ" },
  { name: "Sigh", emoji: "๐คท๐ฝโโ๏ธ" },
  { name: "Down", emoji: "๐ฅบ" },
  { name: "Tearful", emoji: "๐ข" },
  { name: "Sensitive", emoji: "๐ณ" },
  { name: "Dazed", emoji: "๐ตโ๐ซ" },
  { name: "Anxious", emoji: "๐ฌ" }
]

mood.each do |attributes|
  puts attributes
  symptoms = Mood.create!(attributes)
  puts "Created #{symptoms.name}"
end

puts "Creating Flow"

flow = [
  { name: "Spotting", emoji: "โญ๏ธ" },
  { name: "Light", emoji: "๐ฉธ" },
  { name: "Medium", emoji: "๐ฉธ๐ฉธ" },
  { name: "Heavy", emoji: "๐ฉธ๐ฉธ๐ฉธ" }
]

flow.each do |attributes|
  puts attributes
  symptoms = Flow.create!(attributes)
  puts "Created #{symptoms.name}"
end
