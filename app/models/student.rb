class Student

  attr_reader :first_name

  @@all =[]

  def initialize(first_name)
    @first_name = first_name

    @@all << self
  end

  def self.all
    @@all
  end

  def add_boating_test(test_name, status, instructor)
    BoatingTest.new(test_name, status, self, instructor)
  end

  def tests
    BoatingTest.all.select do |test|
      test.student == self
    end
  end

  def graded_tests
    tests.select {|test| test.status == "passed" || test.status == "failed"}
  end

  def passed_tests
    graded_tests.select {|test| test.status == "passed"}
  end
  
  def failed_tests
    tests.select {|test| test.status == "failed"}
  end

  def self.find_student(student_name)
    @@all.find do |student|
      student.first_name == student_name
    end
  end

end
