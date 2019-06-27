# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Counselor.destroy_all
Student.destroy_all
Parent.destroy_all
CheckIn.destroy_all
StudentParent.destroy_all

counselor1 = Counselor.create(first_name: "Meghan", last_name: "Cassidy", email: "meghan@gmail.com", phone: "3015557777", password: "meghanmeghan")

student1 = Student.create(first_name: "John", last_name: "Smith", email: "john@gmail.com", phone: "3015557776", password: "johnjohn", counselor_id: counselor1.id)

parent1 = Parent.create(first_name: "Maggie", last_name: "Smith", email: "maggie@gmail.com", phone: "3015557778", password: "maggiemaggie")

checkin1 = CheckIn.create(student_id: student1.id, counselor_id: counselor1.id, plan: true, goal: "Manage test anxiety", signal: "poor", strategy: "Grounding exercise, meditation, music", signal_reflection: "racing heart, dizziness", emotion: "scared, anxious, nervous", event: "Right before I have a test", reflection: "")

studentparent1 = StudentParent.create(student_id: student1.id, parent_id: parent1.id)



