# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Cleaning database..."
PhysicalSymptom.destroy_all
Mood.destroy_all
Flow.destroy_all
puts "Destroying Users..."
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
    puts "User with email: #{user_data["email"]} successfully created!"
  end

puts "Creating Physical symptoms"

physical_symptoms = [
  { name: "Cramps", emoji: "🌩" },
  { name: "Back pain", emoji: "🙆‍♀️" },
  { name: "Bloating", emoji: "🎈" },
  { name: "Gas", emoji: "💨" },
  { name: "Headaches", emoji: "💆‍♀️" },
  { name: "Breast Tenderness", emoji: "🌺" },
  { name: "Diarrhoea", emoji: "🧻" },
  { name: "Constipation", emoji: "💩" },
  { name: "Fever", emoji: "🔥" },
  { name: "Craving", emoji: "🍫" },
  { name: "Insomnia", emoji: "🌠" },
  { name: "Irritabilty", emoji: "💣" },
  { name: "Migranes", emoji: "💥" },
  { name: "Stress", emoji: "💢" },
  { name: "Weight gain", emoji: "➕" },
  { name: "Nausea and vomiting", emoji: "🤮" },
  { name: "Acne", emoji: "🐞" },
  { name: "Abdominal pain", emoji: "🙇‍♀️" },
  { name: "Fatigue", emoji: "😮‍💨" },
  { name: "Perineum pain", emoji: "⚡️" },
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
  { name: "Duvet day", emoji: "🫣" },
  { name: "Irritable", emoji: "😠" },
  { name: "Don't mess with me", emoji: "🤬" },
  { name: "Frisky", emoji: "🫦" },
  { name: "Neither here nor there", emoji: "🤷🏽‍♀️" },
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
