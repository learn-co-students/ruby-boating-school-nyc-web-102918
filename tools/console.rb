require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console


s1 = Student.new("Ruth")
s2 = Student.new("Matt")
s3 = Student.new("Crystal")

t1 = Instructor.new("Alessia")
t2 = Instructor.new("Isiah")
t3 = Instructor.new("Mike Sam")

b1 = BoatingTest.new(s1, "reading test", "pending", t2)
b2 = BoatingTest.new(s2, "writing test", "pending", t3)
b3 = BoatingTest.new(s2, "driver test", "pending", t1)

binding.pry
0 #leave this here to ensure binding.pry isn't the last line

