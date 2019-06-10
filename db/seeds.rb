# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create(first_name: "Junaid", last_name: "Tariq")

Student.create(first_name: "Sean", last_name: "Carter")

Student.create(first_name: "Amir", last_name: "Khan")

SchoolClass.create(title: "Science", room_number: "1")

SchoolClass.create(title: "Development", room_number: "2")

SchoolClass.create(title: "Maths", room_number: "3")