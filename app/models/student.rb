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


  def add_boating_test(student, test_name, status, instructor)
    BoatingTest.new(self, test_name, status, instructor)
  end


  def self.find_student(first_name) #why is this a class method? We are looking at the entire class
    @@all.find {|student| first_name == student.first_name}
  end


  def tests #helper method
    tests = BoatingTest.all.select {|test| test.student == self}
  end


  def passed_tests #helper method
    self.tests.select {|test| test.status == "passed"}
  end


  def find_percentage #search through boating tests that this single person has taken and give the average?
    self.passed_tests.count.to_f / self.tests.count
  end

end
