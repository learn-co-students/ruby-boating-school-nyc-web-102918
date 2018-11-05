

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
    BoatingTest.status = "Passed"
  end

  def self.fail_student(student_name, test_name)
      found_test = BoatingTest.all.find do |boating_test|
        boating_test.name == test_name && boating_test.student.name == student_name
      end
      boating_test.status = "Failed"
  end

  def self.student_grade_percentage(student_name)


  end

end
