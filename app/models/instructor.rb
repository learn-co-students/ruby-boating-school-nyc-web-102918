

class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def boating_tests
    BoatingTest.all.select do |boating_test|
      boating_test.instructor == self
    end
  end

  def self.pass_student(student_name, test_name)
    found_test = BoatingTest.all.find do |boating_test|
      boating_test.name == test_name && boating_test.student.name == student_name
    end
    found_test.status = "Passed"
  end

  def self.fail_student(student_name, test_name)
      found_test = BoatingTest.all.find do |boating_test|
        boating_test.name == test_name && boating_test.student.name == student_name
      end
      found_test.status = "Failed"
  end

  def student_grade_percentage(student_name)
    #
    # found_student = Student.find_student(student_name) => returns the Object of the student (found by name)
    # student_tests = found_student.tests.select do |test|
    #   test.instructor == self

    passed = BoatingTest.all.select do |boating_test|
      boating_test.name == student_name && boating_test.status == "Passed"
    end
    all = BoatingTest.all.select do |boating_test|
      boating_test.name == student_name
    end
    total_passing_percentage = (passed.count / all.count) * 100
  end

end
