class Instructor

  attr_reader :name

  def initialize(name)
    @name = name
    @@all << self
  end

  def pass_student(student, test_name)
    test = BoatingTest.all.find {|test| test.student == student && test.test_name == test_name && test.instuctor == self}
    test.test_status = "passed"
    test.test_status
  end

  def fail_student(student, test_name)
    test = BoatingTest.all.find {|test| test.student == student && test.test_name == test_name && test.instuctor == self}
    test.test_status = "failed"
    test.test_status
  end

  def student_grade_percentage(student)
    all_tests = BoatingTest.all.select {|test| test.student == student}.length
    passing_tests = BoatingTest.all.select {|test| test.student == student && test.test_status == "passing"}.length
    passing_tests / all_tests
  end

  @@all = []

  def self.all
    @@all
  end

end


# init with name
# return all instructors
# Instructor.pass_student should take in a student name
#   and test name and return status passed
# Instructor.fail_student should take in a student name
#   and test name and return status failed
# Instructor.student_grade_percentage should take in
#   a student first name and output the percentage of
#   tests that they have passed
