require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console
spongebob= Student.new("Spongebob")
patrick= Student.new("Patrick")

puff= Instructor.new("Ms.Puff")
krabs= Instructor.new("Mr.Krabs")
test1= spongebob.add_boating_test("Don't Crash 101", "pending", puff)
test2= spongebob.add_boating_test("Don't Smoke and Drive", "pending", puff)
test3= patrick.add_boating_test("Don't Crash 101", "pending", puff)
passed1 = Instructor.pass_student(spongebob, "Don't Crash 101")
failed1 = Instructor.fail_student(spongebob, "Don't Smoke and Drive")
percentage1 = Instructor.student_grade_percentage(spongebob)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line
