# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Course.create! [
	{code: 'COMP101', name: 'Introduction to Computer Skills', description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam", price: 150},
	{code: 'PROG104', name: 'Principles of Programming Logic', description: "Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", price: 150},
	{code: 'MATH26', name: 'Mathematics for Computing', description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", price: 150},
	{code: 'AC114', name: 'Business Accounting', description: "Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", price: 150},
]

student = Student.create!(email: 'ntholi@live.com', password: '111111')

tutor = Tutor.create!(email: 'ntholi@live.com', password: '111111')

UserProfile.create!(first_name: 'David', last_name: 'Sethathi', tutor: tutor)

UserProfile.create!(first_name: 'Thabo', last_name: 'Lebese', student: student)

tc = TutoredCourse.create!(tutor: tutor, course: Course.find(1))

Lesson.create!(title: 'What is a Computer?', summary: 'This is a lesson about what a computer is and what it does and stuff', tutored_course: tc)

Lesson.create!(title: 'Input and Output', summary: 'Here we will look at the input and output devices and how each are used in computing, we will also look in depth on the examples of each input and output opps of a computer including processing and storage', tutored_course: tc)

StudentEnrollment.create!(student: student, tutored_course: tc)
