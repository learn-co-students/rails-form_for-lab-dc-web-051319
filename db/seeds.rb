# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


class1 = SchoolClass.find_or_create_by(title: "Intro to English" , room_number: 45)
class2 = SchoolClass.find_or_create_by(title: "Intro to Physics" , room_number: 46)
class3 = SchoolClass.find_or_create_by(title: "Intro to Nonsense" , room_number: 50)

jon = Student.find_or_create_by(first_name: "jon" , last_name: "snow")
tyrion = Student.find_or_create_by(first_name: "tyrion" , last_name: "lannister")
