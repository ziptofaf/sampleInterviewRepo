# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Team.delete_all
Task.delete_all

(1..20).map do |i|
  Team.create!(name: "team_#{i}")
end

30.times do
  Task.create!(description: "")
end