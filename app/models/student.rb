class Student

  attr_accessor :first_name, :tests

  @@all = []

  def self.all
    @@all
  end

  def self.find_student(first_name)
    Student.all.find do |student|
      student.first_name == first_name
    end
  end

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def add_boating_test(test_name, test_status, instructor)
    BoatingTest.new(self, test_name, test_status, instructor)
  end

  def tests
    BoatingTest.all.select do |test|
      test.student == self
    end
  end
end
