class Student

  attr_accessor :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_student(student_name)
    self.all.find do |student|
      student.first_name == student_name
    end
  end

  def add_boating_test(test_name, test_status, instructor)
    new_test = BoatingTest.new(self, test_name, test_status, instructor)
    new_test
  end
end
