require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

student1 = Student.new ("vibhu")
student2 =  Student.new ("Nirma")




instructor1 = Instructor.new ("swami sir")




boatingtest2 = BoatingTest.new(student1,"lesson one","pending",instructor1)
student1.add_boating_test("lesson three","pending",instructor1)
boatingtest1 = BoatingTest.new(student2,"lesson two","pending",instructor1)





binding.pry
0 #leave this here to ensure binding.pry isn't the last line
