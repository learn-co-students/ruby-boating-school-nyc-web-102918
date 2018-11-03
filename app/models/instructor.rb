class Instructor
  attr_accessor :name, :student, :boatingtest
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.pass_student(student, quiz)
    selected_test = BoatingTest.all.find do |person|
    person.student == student && person.test_name == quiz
  end
    selected_test.test_status = "passed"
  end
  def self.fail_student(student_name, quiz)
    selected_test = BoatingTest.all.find do |tests|
    tests.student == student_name && tests.test_name == quiz
  end
    selected_test.test_status = "failed"
  end
  def self.student_grade_percentage(student)
    passed_test = BoatingTest.all.select do |tests|
      tests.student == student && tests.test_status == "passed"
    end
    all_student_tests = BoatingTest.all.select do |tests|
      tests.student == student
    end
    percentage = (passed_test.length/all_student_tests.length.to_f)*100
    "#{percentage}%"
  end
  def self.all
    @@all
  end
end
