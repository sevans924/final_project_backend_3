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

counselor1 = Counselor.create(first_name: "Meghan", last_name: "Cassidy", email: "meghan@gmail.com", phone: "3015557777", password: "meghanmeghan", username: "meghan@gmail.com", is_student: false, is_parent: false, is_counselor: true)
counselor2 = Counselor.create(first_name: "Lisa", last_name: "Sylvester", email: "lisa@gmail.com", phone: "3015557726", password: "lisalisa", username: "lisa@gmail.com", is_student: false, is_parent: false, is_counselor: true)

student1 = Student.create(first_name: "John", last_name: "Smith", email: "john@gmail.com", phone: "3015557776", password: "johnjohn", counselor_id: counselor1.id, username: "john@gmail.com", is_student: true, is_parent: false, is_counselor: false)
student2 = Student.create(first_name: "Jack", last_name: "Robs", email: "jack@gmail.com", phone: "301555543", password: "jackjack", counselor_id: counselor1.id, username: "jack@gmail.com", is_student: true, is_parent: false, is_counselor: false)
student3 = Student.create(first_name: "Sonia", last_name: "Dums", email: "donia@gmail.com", phone: "3015526776", password: "soniasonia", counselor_id: counselor2.id, username: "sonia@gmail.com", is_student: true, is_parent: false, is_counselor: false)
student4 = Student.create(first_name: "Jose", last_name: "Elsy ", email: "jose@gmail.com", phone: "6205557776", password: "josejose", counselor_id: counselor2.id, username: "jose@gmail.com", is_student: true, is_parent: false, is_counselor: false)
student5 = Student.create(first_name: "Diana", last_name: "Utsy", email: "diana@gmail.com", phone: "3019957776", password: "dianadiana", counselor_id: counselor1.id, username: "diana@gmail.com", is_student: true, is_parent: false, is_counselor: false)
student6 = Student.create(first_name: "Mike", last_name: "Wnner", email: "mike@gmail.com", phone: "5605557776", password: "mikemike", counselor_id: counselor1.id, username: "mike@gmail.com", is_student: true, is_parent: false, is_counselor: false)
student7 = Student.create(first_name: "Jake", last_name: "Low", email: "jake@gmail.com", phone: "3015555676", password: "jakejake", counselor_id: counselor1.id, username: "jake@gmail.com", is_student: true, is_parent: false, is_counselor: false)
student8 = Student.create(first_name: "Noa", last_name: "Heinz", email: "noa@gmail.com", phone: "3415557776", password: "noanoa", counselor_id: counselor2.id, username: "noa@gmail.com", is_student: true, is_parent: false, is_counselor: false)
student9 = Student.create(first_name: "Bruce", last_name: "TsiTsi", email: "bruce@gmail.com", phone: "3015550976", password: "brucebruce", counselor_id: counselor2.id, username: "bruce@gmail.com", is_student: true, is_parent: false, is_counselor: false)

parent1 = Parent.create(first_name: "Maggie", last_name: "Smith", email: "maggie@gmail.com", phone: "3015557778", password: "maggiemaggie", username: "maggie@gmail.com", is_student: false, is_parent: true, is_counselor: false)

checkin1 = CheckIn.create(student_id: student1.id, counselor_id: counselor1.id, plan: false, goal: "Manage test anxiety", signal: "poor", strategy: "meditation", signal_reflection: "racing heart, dizziness", emotion: "nervous", event: "An hour before my math test", reflection: "I tried meditating but I couldn't focus, it just made me more worried.")
checkin2 = CheckIn.create(student_id: student1.id, counselor_id: counselor1.id, plan: false, goal: "Manage test anxiety", signal: "good", strategy: "Music", signal_reflection: "racing heart, dizziness", emotion: "scared, anxious, nervous", event: "The night before my history test", reflection: "I listened to my Spotify playlist and it helped me calm down and focus.")
checkin3 = CheckIn.create(student_id: student3.id, counselor_id: counselor2.id, plan: false, goal: "Stay focused in Science class", signal: "meh", strategy: "Grounding exercise", signal_reflection: "My body didn't really feel anything", emotion: "bored", event: "In the middle of Science class, 6th period", reflection: "I tried the finger tapping grounding exercise. It sort of worked for a little bit. I finished my work.")
checkin4 = CheckIn.create(student_id: student5.id, counselor_id: counselor1.id, plan: false, goal: "Turn in my homework on time", signal: "meh", strategy: "Filling out my planner", signal_reflection: "My body felt normal", emotion: "Disctracted", event: "At the end of class I wrote down my homework in my planner", reflection: "I remembered to do the assignment at home, but then I forgot it.")
checkin5 = CheckIn.create(student_id: student5.id, counselor_id: counselor1.id, plan: false, goal: "Turn in my homework on time", signal: "good", strategy: "Check with my mom", signal_reflection: "Racing heart", emotion: "Proud", event: "First period this morning", reflection: "I checked with my mom and she helped me find my homework. I turned it in on time.")
checkin6 = CheckIn.create(student_id: student2.id, counselor_id: counselor1.id, plan: false, goal: "Calm down without hitting", signal: "rough", strategy: "Hug myself", signal_reflection: "racing heart, dizziness, crying", emotion: "angry, frustrated, rejected", event: "At recess today, Bobby called me a name", reflection: "I was really mad and tried to hug myself but it was hard.")

plan1 = CheckIn.create(student_id: student1.id, counselor_id: counselor1.id, plan: true, goal: "Manage test anxiety", signal: "poor", strategy: "Grounding exercise, meditation, music", signal_reflection: "racing heart, dizziness", emotion: "scared, anxious, nervous", event: "Right before I have a test", reflection: "")
plan2 = CheckIn.create(student_id: student2.id, counselor_id: counselor1.id, plan: true, goal: "Calm down without hitting", signal: "rough", strategy: "Grounding exercise, hug myself, music", signal_reflection: "hot, hard to keep my body still", emotion: "frustrated, angry, rejected", event: "When I'm on the playground afterschool with the big kids.", reflection: "")
plan3 = CheckIn.create(student_id: student3.id, counselor_id: counselor2.id, plan: true, goal: "Stay focused in Science class", signal: "meh", strategy: "Breathing exercise, listen to music, take a walk", signal_reflection: "confused, my body wants to stand up and walk around", emotion: "bored, calm, distracted", event: "After the first 10 minutes of class", reflection: "")
plan4 = CheckIn.create(student_id: student4.id, counselor_id: counselor2.id, plan: true, goal: "Be a supportive friend", signal: "good", strategy: "writing, talk to an adult, have some alone time", signal_reflection: "Excitement", emotion: "indifferent, bored", event: "During break, I post pictures of my friends with mean comments attached to them", reflection: "")
plan5 = CheckIn.create(student_id: student5.id, counselor_id: counselor1.id, plan: true, goal: "Turn in my homework on time", signal: "meh", strategy: "Fill out my planner, check with a teacher, check with my mom", signal_reflection: "confused, distant", emotion: "confused, distracted", event: "I always forget to finish homework at home and bring it into school", reflection: "")

studentparent1 = StudentParent.create(student_id: student1.id, parent_id: parent1.id)



