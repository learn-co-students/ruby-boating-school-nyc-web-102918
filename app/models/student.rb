class Student
  attr_accessor :boatingtest, :instructor, :first_name
  @@all = []
  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end
  def add_boating_test(boatingtest, status, instructor)
    BoatingTest.new(self, boatingtest, status, instructor)
  end
  def self.all
    @@all
  end
  def self.find_student(name)
    Student.all.find do |student|
    student.first_name = name
  end
  end
end
