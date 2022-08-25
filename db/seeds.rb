# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)

# puts "Cleaning database..."
# PhysicalSymptom.destroy_all

# puts "Creating Physical symptoms"

# physical_symptoms = [
#   { name: "Cramps", emoji: "🌩" },
#   { name: "Back pain", emoji: "🙆‍♀️" },
#   { name: "Bloating", emoji: "🎈" },
#   { name: "Gas", emoji: "💨" },
#   { name: "Headaches", emoji: "💆‍♀️" },
#   { name: "Breast Tenderness", emoji: "🌺" },
#   { name: "Diarrhoea", emoji: "🧻" },
#   { name: "Constipation", emoji: "💩" },
#   { name: "Fever", emoji: "🔥" },
#   { name: "Craving", emoji: "🍫" },
#   { name: "Insomnia", emoji: "🌠" },
#   { name: "Irritabilty", emoji: "💣" },
#   { name: "Migranes", emoji: "💥" },
#   { name: "Stress", emoji: "💢" },
#   { name: "Weight gain", emoji: "➕" },
#   { name: "Nausea and vomiting", emoji: "🤮" },
#   { name: "Acne", emoji: "🐞" },
#   { name: "Abdominal pain", emoji: "🙇‍♀️" },
#   { name: "Fatigue", emoji: "😮‍💨" },
#   { name: "Perineum pain", emoji: "⚡️" },
#   { name: "Swelling", emoji: "🦵" }
# ]

# [physical_symptoms].each do |attributes|
#   symptoms = PhysicalSymptom.create!(attributes)
#   puts "Created #{symptoms.name}"
# end

# puts "Finished!"
