class Student
attr_accessor :first_name
@@all = []

  def initialize(first_name)   #should initialize with first_name
    @first_name= first_name

    @@all << self
  end

  #Student.all should return all of the student instances
  def self.all
    @@all
  end


  #Student#add_boating_test should initialize a new boating test with a student (Object),
  #a boating test name (String), a boating test status (String), and an Instructor (Object)

  def add_boating_test(boating_test_name, boating_test_status, instructor)
    BoatingTest.new(self, boating_test_name, boating_test_status, instructor)
  end

  #Student.find_student will take in a student first name and output that student (Object)
  def self.find_student(first_name)
      @@all.find do |student|
        student.first_name == first_name
      end
  end

end
