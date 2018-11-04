class Instructor

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.pass_student(student_name, test_name)
    student_test = BoatingTest.all.find do |test|
      test.student.first_name == student_name && test.test_name == test_name
    end
    student_test.test_status = "passed"
  end

  def self.fail_student(student_name, test_name)
    student_test = BoatingTest.all.find do |test|
      test.student.first_name == student_name && test.test_name == test_name
    end
    student_test.test_status = "failed"
  end

  def self.student_grade_percentage(student_name)
    tests_passed = 0
    tests_taken = BoatingTest.all.select do |test|
      test.student.first_name == student_name
    end
    tests_taken.each do |test|
      if test.test_status == "passed"
        tests_passed += 1
      end
    end
    percentage = (tests_passed.to_f / tests_taken.length.to_f) * 100.0
    "#{student_name}'s grade percentage is #{percentage.round(2)}%"
  end

end
