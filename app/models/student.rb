class Student

  attr_reader :first_name

  def initialize(first_name)
    @first_name = first_name
    @@all << self
  end

  def add_boating_test(test_name, test_status, instuctor)
    BoatingTest.new(self, test_name, test_status, instuctor)
  end

  @@all = []

  def self.all
    @@all
  end

  def self.find_student(first_name)
    self.all.find {|student| student.first_name == first_name}
  end

end

# should initialize with first_name
# Student.all should return all of the student instances
# Student#add_boating_test should initialize a new
#   boating test with a student (Object), a boating
#   test name (String), a boating test status (String),
#   and an Instructor (Object)
# Student.find_student will take in a student first
#   name and output that student (Object)
