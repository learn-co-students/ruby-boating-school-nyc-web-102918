

class Student

  attr_accessor :first_name

  @@all = []

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def self.find_student(first_name)
    self.all.find do |student|
      student.first_name == first_name
    end
  end

  def tests
    BoatingTest.select.all do |student+name|
      student_name.student == self
  end

  def add_boating_test(name, status, instructor)
    BoatingTest.new(self, name, status, instructor)
  end

end
