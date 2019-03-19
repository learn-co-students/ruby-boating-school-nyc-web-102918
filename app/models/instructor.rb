class Instructor

attr_accessor :first_name

@@all = []


def initialize(first_name)
  @first_name = first_name
  @@all << self
end


def self.all
   @@all
end



def grade_student(student, test_name, status)
  valid_test =  BoatingTest.all.find{|test| test.student == student && test.test_name == test_name}
    if (valid_test)
      valid_test.status = status
      valid_test #returns
    else
      BoatingTest.new(student, test_name, status, self)
    end
  end

  # calling method grade student and passing in these arguments, setting variable valid_test
  #this will look through all instances of boating test to see if there is an instance where the student name and test match up

  def pass_student(student, test_name) #if it helps you get to a point but doesn't compelte the jobm, make it a helper method
    self.grade_student(student, test_name, "passed")
  end



  def fail_student(student, test_name)
    self.grade_student(student, test_name, "failed")
  end

end
