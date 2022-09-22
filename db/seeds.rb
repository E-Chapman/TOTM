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
  { name: "Back Pain", emoji: "🙆‍♀️" },
  { name: "Bloating", emoji: "🎈" },
  { name: "Gas", emoji: "💨" },
  { name: "Headaches", emoji: "💆‍♀️" },
  { name: "Tender Breasts", emoji: "🌺" },
  { name: "Diarrhoea", emoji: "🧻" },
  { name: "Constipation", emoji: "💩" },
  { name: "Fever", emoji: "🔥" },
  { name: "Cramps", emoji: "🌩" },
  { name: "Craving", emoji: "🍫" },
  { name: "Insomnia", emoji: "🌠" },
  { name: "Irritabilty", emoji: "💣" },
  { name: "Migrane", emoji: "💥" },
  { name: "Stress", emoji: "💢" },
  { name: "Weight Gain", emoji: "➕" },
  { name: "Nausea", emoji: "🤮" },
  { name: "Acne", emoji: "🐞" },
  { name: "Tummy Ache", emoji: "🙇‍♀️" },
  { name: "Fatigue", emoji: "😮‍💨" },
  { name: "Perineum Pain", emoji: "⚡️" },
  { name: "Swelling", emoji: "🦵" }
]

physical_symptoms.each do |attributes|
  puts attributes
  symptoms = PhysicalSymptom.create!(attributes)
  puts "Created #{symptoms.name}"
end

puts "Finished!"

puts "Creating Moods"

mood = [
  { name: "Happy", emoji: "😃" },
  { name: "Fantastic!", emoji: "🤩" },
  { name: "Good", emoji: "🙂" },
  { name: "Energised", emoji: "💫" },
  { name: "Meh", emoji: "😑" },
  { name: "Duvet Day", emoji: "🫣" },
  { name: "Irritable", emoji: "😠" },
  { name: "Beep Off", emoji: "🤬" },
  { name: "Frisky", emoji: "🫦" },
  { name: "Sigh", emoji: "🤷🏽‍♀️" },
  { name: "Down", emoji: "🥺" },
  { name: "Tearful", emoji: "😢" },
  { name: "Sensitive", emoji: "😳" },
  { name: "Dazed", emoji: "😵‍💫" },
  { name: "Anxious", emoji: "😬" }
]

mood.each do |attributes|
  puts attributes
  symptoms = Mood.create!(attributes)
  puts "Created #{symptoms.name}"
end

puts "Creating Flow"

flow = [
  { name: "Spotting", emoji: "⭕️" },
  { name: "Light", emoji: "🩸" },
  { name: "Medium", emoji: "🩸🩸" },
  { name: "Heavy", emoji: "🩸🩸🩸" }
]

flow.each do |attributes|
  puts attributes
  symptoms = Flow.create!(attributes)
  puts "Created #{symptoms.name}"
end
