require "pry"
require_relative "./boatingtest"
require_relative "./student"

class Instructor
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.get_test(student_name, test_name)
    BoatingTest.all.find do |test|
      test.student.first_name == student_name && test.name == test_name
    end
  end

  def self.pass_student(student_name, test_name)
    test = get_test(student_name, test_name)
    test.status = "passed"
    "#{student_name} has #{test.status} '#{test_name}'"
  end

  def self.fail_student(student_name, test_name)
    test = get_test(student_name, test_name)
    test.status = "failed"
    "#{student_name} has #{test.status} '#{test_name}'"
  end

  def self.student_grade_percentage(student_name)
    student = Student.find_student(student_name)
    passed_percentage = (student.passed_tests.count.to_f / student.graded_tests.count.to_f) * 100
    "#{student_name} has passed #{passed_percentage.round(2)}% of their tests."
  end


end
