# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.destroy_all
School.destroy_all

marcus = Student.create(first_name: "Marcus", last_name: "Wordlaw")
mar1 = Student.create(first_name: "Mar1", last_name: "Word1")
marc2 = Student.create(first_name: "Marc2", last_name: "Wordlaw2")


math = School.create(title: "Mathemtatics", room_number: 302)
science = School.create(title: "Science", room_number: 232)
gym = School.create(title: "Gymanstics", room_number: 135)
