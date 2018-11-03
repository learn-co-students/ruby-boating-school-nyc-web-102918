require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

spongebob = Student.new("Spongebob")
patrick = Student.new("Patrick")

puff = Instructor.new("Ms.Puff")
krabs = Instructor.new("Mr.Krabs")

test1 = spongebob.add_boating_test("Don't Crash 101", "pending", puff)
test2 = spongebob.add_boating_test("Stay Afloat", "pending", krabs)
test3 = patrick.add_boating_test("Don't Sink", "pending", puff)


# Run these in pry
# Student.all
# Student.find_student("Spongebob")
# Student.find_student("Patrick")
# test1
# test2
# test3
# BoatingTest.all
# Instructor.all
# puff.pass_student(spongebob, "Don't Crash 101")
# krabs.fail_student(spongebob, "Stay Afloat")
# test1
# test2
# puff.student_grade_percentage(spongebob)




binding.pry
0 #leave this here to ensure binding.pry isn't the last line
