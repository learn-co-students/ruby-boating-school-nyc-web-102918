require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


spongebob= Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")

puts "test1= spongebob.add_boating_test('Don't Crash 101', 'pending', puff)
creates a boating_test"
puts spongebob.add_boating_test("Don't Crash 101", "pending", puff)
puts spongebob.add_boating_test("Don't Crash 102", "failed", puff)
puts spongebob.add_boating_test("Don't Crash 103", "failed", puff)

puts "\n Test 2: Instructor.fail_student('spongebob','Don't Crash 101') fails the student"
puts Instructor.fail_student("Spongebob","Don't Crash 101").inspect

puts "\n Test 3: Instructor.student_grade_percentage('Spongebob') returns 0"
puts Instructor.student_grade_percentage('Spongebob').inspect
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

0 #leave this here to ensure binding.pry isn't the last line
